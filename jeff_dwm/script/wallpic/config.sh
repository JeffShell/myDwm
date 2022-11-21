#!/bin/sh

r18StandIndex=0
for file in $(ls ~/MyImage/xp/standImg/)
do
  r18StandArr[$r18StandIndex]=$file
  ((r18StandIndex++))
done

r18RowIndex=0
for file in $(ls ~/MyImage/xp/rowImg/)
do
  r18RowArr[$r18RowIndex]=$file
  ((r18RowIndex++))
done

standIndex=0
for file in $(ls ~/MyImage/standImg/)
do
  standArr[$standIndex]=$file
  ((standIndex++))
done

rowIndex=0
for file in $(ls ~/MyImage/rowImg/)
do
  rowArr[$rowIndex]=$file
  ((rowIndex++))
done

#一般壁纸
export standArr
export rowArr
#R18壁纸
export r18StandArr
export r18RowArr

export showR18=true #R18选项