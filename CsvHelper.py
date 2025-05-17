import csv

# 初始化四个空列表存储各列数据
id_list = []
play_count_list = []
title_list = []
artist_list = []

with open('/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/AllExport.csv', mode='r', encoding='mac_roman') as file:
    csv_reader = csv.DictReader(file)  # 自动解析表头
    print(csv_reader.fieldnames)
    for row in csv_reader:
        id_list.append(row['ID'])
        play_count_list.append(int(row['Played Count']))  # 转为整数
        title_list.append(row['Title'])
        artist_list.append(row['Artist'])

# 验证数据
print(f"ID列: {id_list[:3]}...")
print(f"播放次数列: {play_count_list[:3]}...")
