
import csv
import os
    
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


def read_ids_from_csv(file_path='/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/RecentlyPlayed.csv'):
    with open(file_path, 'r', encoding='mac_roman') as file:
        tracks = [row[0] for row in csv.reader(file)][1:]  # 跳过表头
        return tracks


def get_delta_played_counts(persistent_ids, csv_dir='/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard'):
    delta_dict = {}
    
    try:
        play_count_dict_old = dict(read_ids_and_played_counts_from_csv(os.path.join(csv_dir, 'AllExport_old.csv')))
        play_count_dict_new = dict(read_ids_and_played_counts_from_csv(os.path.join(csv_dir, 'AllExport.csv')))
    except Exception as e:
        print(f"Error reading CSV files: {e}")
        return {}
    
    for id in persistent_ids:
        try:
            if id not in play_count_dict_old:
                delta_dict[id] = play_count_dict_new[id]
            else:
                delta_dict[id] = play_count_dict_new[id] - play_count_dict_old[id]
        except Exception as e:
            print(f"Error processing ID {id}: {e}")
            continue
            
    return delta_dict


def sort_tracks_by_delta_play_counts(delta_dict, reverse=True):
    return [
        item[0] for item in
        sorted(delta_dict.items(), key=lambda x: x[1], reverse=reverse)
    ]
    

# MAIN ACTIONS
ids = read_ids_from_csv()
result = get_delta_played_counts(ids)
print(result)
sorted = sort_tracks_by_delta_play_counts(result)
print(sorted)
