
import csv
import os
from datetime import date, timedelta
from pathlib import Path
from typing import Dict, List, Tuple

WORKING_FOLDER_DIR = "/Users/charliec/myDev/AppleScripts/AppleMusicWeeklyChart/WorkingFolder"
RECENTLY_PLAYED_PATH = WORKING_FOLDER_DIR + "/RecentlyPlayed.csv"
ALL_EXPORT_DIR_PREFIX = WORKING_FOLDER_DIR + "/AllExport_"


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
        with open(file_path, 'r', encoding='mac_roman') as file:
            csv_reader = csv.DictReader(file)
            for row in csv_reader:
                play_count_dict[row[id_col]] = int(row[play_col])
    except Exception as e:
        print(f"Error when reading file: {e}")
        return {}
    return play_count_dict


def read_ids_from_csv(file_path=RECENTLY_PLAYED_PATH):
    with open(file_path, 'r', encoding='mac_roman') as file:
        tracks = [row[0] for row in csv.reader(file)]
        return tracks


def get_delta_played_counts(persistent_ids, new_export_dir, old_export_dir):
    delta_dict = {}

    try:
        play_count_dict_old = dict(read_ids_and_played_counts_from_csv_batches(old_export_dir))
        play_count_dict_new = dict(read_ids_and_played_counts_from_csv_batches(new_export_dir))
    except Exception as e:
        print(f"Error reading CSV files: {e}")
        return {}
    
    for id in persistent_ids:
        try:
            if id not in play_count_dict_old:
                delta_dict[id] = play_count_dict_new[id]
                print(str(id) + " is new! delta: " + str(delta_dict[id]))
            else:
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
    
    with open(path, 'w', newline='', encoding='mac_roman') as f:
        writer = csv.writer(f)
        writer.writerows(sorted_data)

    print('Weekly chart created at ' + output_path + '.')


def compare_play_count_records(new_date: str, old_date: str):
    ids = read_ids_from_csv()
    result = get_delta_played_counts(ids, new_export_dir=ALL_EXPORT_DIR_PREFIX + new_date, old_export_dir=ALL_EXPORT_DIR_PREFIX + old_date)
    sorted = sort_tracks_by_delta_play_counts(result)
    save_tracks_to_csv(sorted, output_path=WORKING_FOLDER_DIR + "/Chart_" + new_date + ".csv")


def compare_play_count_records_by_day(delta_day):
    today = date.today().strftime("%Y.%m.%d")
    past = (date.today() - timedelta(days=delta_day)).strftime("%Y.%m.%d")
    compare_play_count_records(today, past)


# MAIN ACTIONS
compare_play_count_records_by_day(7)

