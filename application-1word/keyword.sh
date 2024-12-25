#!/bin/bash 
rm temp.txt && touch temp.txt

## 讀取文件
### 移除符號暫存 temp.txt
data=$(cat words.txt)
for item in $data;
do 
  echo ${item//[^a-zA-Z]/} >> temp.txt
done


## 讀取 temp.txt 變成陣列格式
### 排除重複字串（不分大小寫）
### 統計字串出現次數
arr=$(sort -fu temp.txt)
for item in $arr;
do 
  count=$(grep -iw $item temp.txt |wc -l)
  echo "$count $item"
done
