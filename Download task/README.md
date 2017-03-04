#Download from url script

###[URL of site] (https://www.nseindia.com/products/content/derivatives/equities/archieve_fo.htm)

###[URL of download zip] (https://www.nseindia.com/content/historical/DERIVATIVES/2017/JAN/fo02JAN2017bhav.csv.zip)

My approach: 
url1 = https://www.nseindia.com/content/historical/DERIVATIVES/2017/JAN/fo
url2 = 02
url3 = JAN2017bhav.csv.zip

url2 = [1,..,31]

Now I run a loop to edit the url2 and then download all zip files from the urls combined
This is done for both 2016 and 2017

##How to download the files:

1. git pull this repo.

2. go to terminal, and type:
	* chmod 755 script.sh
	* ./script.sh

3. The files will download automatically and then give a single zip with all the contents of each file unzipped individually.
