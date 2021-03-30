#!/bin/bash
# Program: final_project.sh
# Author: Tian Niezing
# Date: 30-03-2021
# This file contains all the Linux-commands, in order, needed to reproduce this work. 
# It can be that this script will not run directly in your Linux-shell. 
# In order to make it still work, you have to type all the commands exactly like written below, in order, in your Linux-shell.


# Login in the corpus of the RUG, use instead of 's4495845' your own RUG account number. You will be promted for your password after 
# enter this command
ssh s4495845@karora.let.rug.nl

# Add only the tweets of everyday 13.00 of one month (so the first command line below is march 2019) to the file: tweets_201903_13.txt
zless /net/corpora/twitter2/Tweets/2019/03/201903??\:13.out.gz | /net/corpora/twitter2/tools/tweet2tab text >> tweets_201903_13.txt

zless /net/corpora/twitter2/Tweets/2019/08/201908??\:13.out.gz | /net/corpora/twitter2/tools/tweet2tab text >> tweets_201908_13.txt

zless /net/corpora/twitter2/Tweets/2020/03/202003??\:13.out.gz | /net/corpora/twitter2/tools/tweet2tab text >> tweets_202003_13.txt

zless /net/corpora/twitter2/Tweets/2020/08/202008??\:13.out.gz | /net/corpora/twitter2/tools/tweet2tab text >> tweets_202008_13.txt

# Logout from karora
logout

# Copies the file "tweets_201903_13.txt" from karora to the root folder of your computer
scp s4495845@karora.let.rug.nl:tweets_201903_13.txt tweets_201908_13.txt tweets_202003_13.txt tweets_202008_13.txt .

# To write the results of wordscan.py to a new file
python3 wordscan.py tweets_201903_13.txt > output_201903.txt
python3 wordscan.py tweets_201908_13.txt > output_201908.txt
python3 wordscan.py tweets_202003_13.txt > output_202003.txt
python3 wordscan.py tweets_202008_13.txt > output_202008.txt
