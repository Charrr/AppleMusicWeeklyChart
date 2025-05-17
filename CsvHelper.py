
import csv

def ReadFromCsv(file_path, id_col='ID', play_col='Played Count'):
    id_list = []
    play_count_list = []
    
    try:
        with open(file_path, 'r', encoding='mac_roman') as file:
            csv_reader = csv.DictReader(file)
            for row in csv_reader:
                id_list.append(row[id_col])
                play_count_list.append(int(row[play_col]))
    except Exception as e:
        print(f"读取文件出错: {e}")
        return [], []
    
    return id_list, play_count_list

# MAIN ACTIONS
ids, plays = ReadFromCsv('/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/AllExport.csv')
print(f"ID列表: {ids}\n播放次数列表: {plays}")