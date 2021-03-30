#!/bin/python3
# Program: wordscan.py
# Author: Tian Niezing
# Date: 24-03-2021
# This program searches for certain words in a .txt file and prints the (total) number of occurences,
# the total number of lines in the txt file and the 'matching words/tweets ratio' 
# (how often the total number of occurrences of the words occur in one Tweet)

import sys
import re

def count_lines(txt_file):
    """ This function returns the number of lines that the txt_file contains. """

    txt = open(txt_file, 'r')
 
    line_count = 0

    for line in txt:
            if line != "\n":
                line_count += 1
    txt.close()

    return(line_count)


def main(argv):
    """ This function prints the number of occurences of each of the words (case-insensitive) and the total word count from the 'words' list in the
    text file given as argument in the terminal. Also it prints the number of lines (here equal to the number of Tweets) and the 'matching word/tweet ratio'."""

    infile = open(sys.argv[1], 'r')
    data = infile.read() 
    infile.close()  

    words = ['netflix', 'videoland', 'amazon prime', 'apple tv +', 'apple tv+', 'appletv +', 'appletv+', 'apple tv', 'appletv', 'netflixen', 'film', 'serie']
    total = 0

    for word in words:
        count = sum(1 for _ in re.finditer(r'\b%s\b' % re.escape(word), data.lower()))
        print(word,':', count)
        total = total + count
    print('Total :', total)   

    line_count = count_lines(sys.argv[1])

    print('Number of lines :', line_count)

    words_lines_ratio = total / line_count
    print('Matching words / tweets ratio :', words_lines_ratio)


if __name__ == "__main__":
    main(sys.argv)

