#!/usr/bin/python2.7

import os
import sys
import glob
import string

from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
from pdfminer.pdfpage import PDFPage
from cStringIO import StringIO

from collections import Counter


def convert_pdf_to_txt(path):
    rsrcmgr = PDFResourceManager()
    retstr = StringIO()
    codec = 'utf-8'
    laparams = LAParams()
    device = TextConverter(rsrcmgr, retstr, codec=codec, laparams=laparams)
    fp = open(path, 'rb')
    interpreter = PDFPageInterpreter(rsrcmgr, device)
    password = ""
    maxpages = 0
    caching = True
    pagenos = set()
    for page in PDFPage.get_pages(
            fp,
            pagenos,
            maxpages=maxpages,
            password=password,
            caching=caching,
            check_extractable=True):
        interpreter.process_page(page)
    fp.close()
    device.close()
    str = retstr.getvalue()
    retstr.close()
    return str


def str_to_words_list(pdf_str):
    out = pdf_str.translate(string.maketrans("", ""), string.punctuation)
    words = out.split()
    cnt = Counter(words)
    return cnt.items()


def take_second(elem):
    return elem[1]


pdf = sys.argv[1]
pdf_str = convert_pdf_to_txt(pdf)
word_occurency = str_to_words_list(pdf_str)
word_occurency.sort(key=take_second)

j = len(word_occurency)
for word, i in word_occurency:
    print(str(j) + ")\t" + str(i) + " - " + word)
    j -= 1
