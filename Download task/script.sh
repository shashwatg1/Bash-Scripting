#!/bin/bash

useragent='Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0'
name='bhav'

#For 2016, Full Year
year='2016'
declare -a arr=("JAN" "FEB" "MAR" "APR" "MAY" "JUN" "JUL" "AUG" "SEP" "OCT" "NOV" "DEC")
for month in "${arr[@]}"
do
	url1="https://www.nseindia.com/content/historical/DERIVATIVES/$year/$month/fo0"
	url2="$month$year$name.csv.zip"
	for i in {1..9}
	do
	   echo "$month $i, 2016"
	   url="$url1$i$url2"
	   wget $url -q --user-agent="$useragent" --timeout=5
	done
	url1="https://www.nseindia.com/content/historical/DERIVATIVES/$year/$month/fo"
	url2="$month$year$name.csv.zip"
	for i in {10..31}
	do
	   echo "$month $i, 2016"
	   url="$url1$i$url2"
	   wget $url -q --user-agent="$useragent" --timeout=5
	done
done

# For 2017, Full Jan
year='2017'
month='JAN'
url1="https://www.nseindia.com/content/historical/DERIVATIVES/$year/$month/fo0"
url2="$month$year$name.csv.zip"
for i in {1..9}
do
   echo "$month $i, 2017"
   url="$url1$i$url2"
   wget $url -q --user-agent="$useragent" --timeout=5
done
url1="https://www.nseindia.com/content/historical/DERIVATIVES/$year/$month/fo"
url2="$month$year$name.csv.zip"
for i in {10..31}
do
   echo "$month $i, 2017"
   url="$url1$i$url2"
   wget $url -q --user-agent="$useragent" --timeout=5
done

# Unzip each file
for file in *.zip
do
unzip -P pcp9100 "$file"  
done

# Delete all the .zip files
for file in *.zip
do
rm *.zip
done

# Zip all extracted files into 1 single file.zip
zip -R files '*.csv'

# Delete all the .csv files
for file in *.csv
do
rm *.csv
done
