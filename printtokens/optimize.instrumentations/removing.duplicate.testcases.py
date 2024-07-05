import sys
import csv

csv.field_size_limit(10 * 1024 * 1024)

def process_csv(rows, outfile):
  seen = []
  result = []

  for row in rows:
    test_tuple = [row[1], row[2]]
    if test_tuple not in seen:
        seen.append(test_tuple)
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
    if rows:
      process_csv(rows, outfile)
      print("\tOptimization: duplicated testcases has been Identified and removed successfully.")
      print(f"\n\tOptimized file saved into {outfile}")      

if __name__ == "__main__":
  main()
