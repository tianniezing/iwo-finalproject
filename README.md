# IWO Video Streaming Diensten tijdens COVID-19

This repository contains code and the data used in this research.

## Content

- wordscan.py (works on the files tweets_201903_13.txt up to and including 202008_13.txt)
- final_project.sh (contains all Linux commands to download the data from an ssh-server)
- tweets_201903_13.txt (contains the Tweets from march 2019)
- tweets_201908_13.txt (contains the Tweets from august 2019)
- tweets_202003_13.txt (contains the Tweets from march 2019)
- tweets_202008_13.txt (contains the Tweets from august 2020)
- output_20xxxx.txt (contains the output you should get using the data files with Tweets in this repository, the first two 'x' are for the years and the second two 'x' for the months.)

## Versions used
- Python 3.8
- Linux 18.7.0


## Usage
If you do not have access to the Linux ssh-server of the Rijks Universiteit Groningen or you do not want to download your own data set of Tweets, you can use the text files in this repository. In order to count the number of occurrences of certain words in the Tweet data, you have to run wordscan.py

```python
python3 word_scan.py tweets_20xxxx_13.txt 
```
The first two 'x' are for the year (i.e. 19 or 20) and the second two 'x' are for the month (i.e. 03 or 08).

Take a look at final_project.sh for the commands if you want to safe the output of wordscan.py in another text file (at the bottom of the file) or if you have access to the Linux ssh-server of the RUG and you want to download your own files.
