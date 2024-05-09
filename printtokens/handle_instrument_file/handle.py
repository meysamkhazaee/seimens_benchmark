import sys
import re

def process_file(filename):
    with open(filename, 'r') as infile:
        lines = infile.readlines()
    lines.pop(0) # delete first line because first line of all paths instrument files are empty line at the start of file
    lines[-1] = lines[-1] + "\n" # add enter to last line
    seen = set()
    result = []
    for line_number, line in enumerate(lines):
      if line not in seen:
        seen.add(line)
        result.append(f"T{line_number}: {line[:-2]}\n")
    result[-1] = result[-1][:-1]
    with open(filename[:-4] + '.optimal.txt', 'w') as outfile:
        outfile.writelines(result)

def main():
  if len(sys.argv) != 2:
    print("Usage: python process_file.py <filename>")
    sys.exit(1)
  filename = sys.argv[1]
  process_file(filename)

if __name__ == "__main__":
  main()