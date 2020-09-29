import os

filename = "C:\it3038c-scripts\testfile.txt"

with open(filename) as f:
    lines = set(f.read().splitlines())
    for l in lines:
        print(l)