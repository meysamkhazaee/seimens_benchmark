import sys
import csv
import re

def process_csv(rows, outfile):
  seen = set()
  result = []

  for row in rows:
    test_tuple = tuple(row)
    if test_tuple not in seen:
        seen.add(test_tuple)
        result.append(row)

  with open(outfile, 'w', newline='') as output:
    writer = csv.writer(output)
    writer.writerows(result)

def main():
  
  if len(sys.argv) != 3:
    print("Usage: python process_csv.py <infile_path> <outfile_path>")
    sys.exit(1)
    
  infile, outfile = sys.argv[1:]
  
  with open(infile, 'r') as input:
    rows = csv.reader(input)
    process_csv(rows, outfile)
  
  print("Optimization: duplicated testcases has been Identified and removed successfully ...\nOptimized {} file saved into {}".format(infile, outfile))

if __name__ == "__main__":
  main()
