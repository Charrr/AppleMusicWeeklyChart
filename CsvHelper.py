
import csv
import os
import re
import subprocess
import sys
from datetime import date, timedelta, datetime
from dateutil.relativedelta import relativedelta
from pathlib import Path
from typing import Dict, List, Tuple

WORKING_FOLDER_DIR = "/Users/charliec/myDev/AppleScripts/AppleMusicWeeklyChart/WorkingFolder"
RECENTLY_PLAYED_PATH = WORKING_FOLDER_DIR + "/RecentlyPlayed.csv"
ALL_EXPORT_DIR_PREFIX = WORKING_FOLDER_DIR + "/AllExport_"
TRACK_INFO_GRABBER_SCPT_PATH = "/Users/charliec/myDev/AppleScripts/AppleMusicWeeklyChart/TrackInfoGrabber.scpt"
PLAYLIST_CREATOR_SCPT_PATH = "/Users/charliec/myDev/AppleScripts/AppleMusicWeeklyChart/PlaylistCreator.scpt"
MIN_PLAYCOUNT = 3

def read_ids_and_played_counts_from_csv_batches(batch_dir):
    file_paths = []
    for root, dirs, files in os.walk(batch_dir):
        for file in files:
            file_paths.append(os.path.join(root, file))

    play_count_dict = {}
    for path in file_paths:
        if (path.endswith('.csv')):
            play_count_dict.update(read_ids_and_played_counts_from_csv(path))
            print('Data read from ' + path + '. Dictonary now has ' + str(len(play_count_dict)) + ' entries.')

    return play_count_dict


def read_ids_and_played_counts_from_csv(file_path, id_col='ID', play_col='Played Count'):
    play_count_dict = {}
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            csv_reader = csv.DictReader(file)
            for row in csv_reader:
                play_count_dict[row[id_col]] = int(row[play_col])
    except Exception as e:
        print(f"Error when reading file: {e}")
        return {}
    return play_count_dict


# def read_ids_from_csv(file_path=RECENTLY_PLAYED_PATH):
#     with open(file_path, 'r', encoding='mac_roman') as file:
#         tracks = [row[0] for row in csv.reader(file)]
#         return tracks


def get_delta_played_counts(new_export_dir, old_export_dir, pids = None):
    delta_dict = {}

    try:
        play_count_dict_old = dict(read_ids_and_played_counts_from_csv_batches(old_export_dir))
        play_count_dict_new = dict(read_ids_and_played_counts_from_csv_batches(new_export_dir))
    except Exception as e:
        print(f"Error reading CSV files: {e}")
        return {}
    
    if pids is None:
        pids = play_count_dict_new.keys()
    
    for id in pids:
        try:
            if id not in play_count_dict_old:
                delta_dict[id] = play_count_dict_new[id]
                print(str(id) + " is new! delta: " + str(delta_dict[id]))
            else:
                delta = play_count_dict_new[id] - play_count_dict_old[id]
                if delta != 0:
                    delta_dict[id] = play_count_dict_new[id] - play_count_dict_old[id]
        except Exception as e:
            print(f"Error processing ID {id}: {e}")
            continue
            
    return delta_dict


def sort_tracks_by_delta_play_counts(
    delta_dict: Dict[str, int], 
    reverse: bool = True
) -> List[Tuple[str, int]]:
    return sorted(delta_dict.items(), key=lambda x: x[1], reverse=reverse)


def save_tracks_to_csv(sorted_data: List[Tuple[str, int]], output_path: str) -> None:
    path = Path(output_path)
    path.parent.mkdir(parents=True, exist_ok=True)

    with open(path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        for pid, playcount in sorted_data:
            if playcount < MIN_PLAYCOUNT:
                continue
            track_info = get_track_info(pid)
            print(f"{playcount}\t{track_info}")
            writer.writerow([pid, playcount, track_info])
            
    print('Weekly chart created at ' + output_path + '.')


def read_pids_from_csv(csv_path: str) -> list[str]:
    with open(csv_path, newline='', encoding='utf-8') as f:
        reader = csv.reader(f)
        pids = [row[0] for row in reader if row]  # avoid empty rows
    return pids


def get_track_info(pid: str):
    result = subprocess.run(
        ["osascript", TRACK_INFO_GRABBER_SCPT_PATH, pid],
        capture_output=True,
        text=True
    )
    if result.returncode == 0:
        return result.stdout.strip()
    else:
        print('Error: ' + result.stderr.strip())
        return result.stderr.strip()


def compare_play_count_records(new_date: str, old_date: str, output_path: str = None):
    print(f"Comparing playcount data from {old_date} to {new_date}...")
    result = get_delta_played_counts(new_export_dir=ALL_EXPORT_DIR_PREFIX + new_date, old_export_dir=ALL_EXPORT_DIR_PREFIX + old_date)
    sorted = sort_tracks_by_delta_play_counts(result)
    if not output_path:
        output_path = WORKING_FOLDER_DIR + "/Chart_" + new_date + "_" + old_date + ".csv"
    save_tracks_to_csv(sorted, output_path)
    return output_path
    
    
def create_playlist_from_pids(pids: list[str], playlist_name: str):
    pid_string = ",".join(pids)
    result = subprocess.run(
        ["osascript", PLAYLIST_CREATOR_SCPT_PATH, pid_string, playlist_name],
        capture_output=True,
        text=True
    )
    
    if result.returncode == 0:
        print("Success:", result.stdout.strip())
    else:
        print("Error:", result.stderr.strip())

# def compare_play_count_records_by_day(delta_day):
#     today = date.today().strftime("%Y.%m.%d")
#     past = (date.today() - timedelta(days=delta_day)).strftime("%Y.%m.%d")
#     compare_play_count_records(today, past)


# def parse_duration(s):
#     pattern = r'(?:(\d+)Y)?(?:(\d+)m)?(?:(\d+)d)?'
#     match = re.fullmatch(pattern, s)
#     if not match:
#         raise ValueError("Invalid duration format")
    
#     years = int(match.group(1)) if match.group(1) else 0
#     months = int(match.group(2)) if match.group(2) else 0
#     days = int(match.group(3)) if match.group(3) else 0
#     return years, months, days


# def subtract_ymd(years=0, months=0, days=0, from_date=None):
#     if from_date is None:
#         from_date = date.today()
#     return from_date - relativedelta(years=years, months=months, days=days)


# MAIN ACTIONS
delta_day = 7
delta_month = 0
delta_year = 0
# if len(sys.argv) > 1:
#     try:
#         delta_day, delta_month, delta_day = parse_duration(sys.argv[1])
#     except ValueError:
#         print(f"Invalid argument: '{sys.argv[1]}' cannot be parsed. Using default value: {delta_year}Y{delta_month}m{delta_day}d.")

# new_date = date.today()
# if len(sys.argv) > 2:
#     try:
#         new_date = datetime.strptime(sys.argv[2], "%Y.%m.%d").date()
#     except ValueError:
#         print(f"Invalid argument: '{sys.argv[2]}' cannot be parsed. Using today by default.")

# old_date = subtract_ymd(delta_year, delta_month, delta_day, from_date=new_date)
# compare_play_count_records(old_date.strftime("%Y.%m.%d"), new_date.strftime("%Y.%m.%d"))

##### MAIN ACTIONS #####
new_date = date.today()
if len(sys.argv) > 1:
    try:
        new_date = datetime.strptime(sys.argv[1], "%Y.%m.%d").date()
    except ValueError:
        print(f"Invalid argument: '{sys.argv[1]}' cannot be parsed. Using today by default.")

old_date = new_date - relativedelta(years=delta_year, months=delta_month, days=delta_day)
if len(sys.argv) > 2:
    try:
        old_date = datetime.strptime(sys.argv[2], "%Y.%m.%d").date()
    except ValueError:
        print(f"Invalid argument: '{sys.argv[2]}' cannot be parsed. Using one week ago from the new date by default.")

csv_path = compare_play_count_records(new_date.strftime("%Y.%m.%d"), old_date.strftime("%Y.%m.%d"))
chart_type = (
    "周榜" if delta_day == 7 else
    "月榜" if delta_month == 1 else
    "年榜" if delta_year == 1 else
    ""
)

pids = read_pids_from_csv(csv_path)
create_playlist_from_pids(pids, f"Charrrboard {chart_type} {new_date.strftime('%Y.%m.%d')}")