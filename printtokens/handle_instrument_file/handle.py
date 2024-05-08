import sys

def process_file(filename):
    with open(filename, 'r') as infile:
        lines = infile.readlines()
    seen = set()
    result = []
    for line_number, line in enumerate(lines):
        if line not in seen:
            seen.add(line)
            result.append(f"T{line_number+1}: {line[:-1]}\n")
    with open(filename + '.numbered.txt', 'w') as outfile:
        outfile.writelines(result)

def main():
  if len(sys.argv) != 2:
    print("Usage: python process_file.py <filename>")
    sys.exit(1)
  filename = sys.argv[1]
  process_file(filename)

if __name__ == "__main__":
  main()