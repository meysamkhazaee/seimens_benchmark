import csv
import sys

def compare_text_files(reader1, reader2, output_csv_path):
    
    with open(output_csv_path, 'w', newline='') as csv_file:
        writer = csv.writer(csv_file)
        
        if len(reader1) != len(reader2):
            return False
        
        for line_number, line_content in enumerate(reader2):
            if reader1[line_number] != line_content:
                writer.writerow([f"T{line_number+1}", "F", line_content.rstrip()[:-1]])
            else:
                writer.writerow([f"T{line_number+1}", "T", line_content.rstrip()[:-1]])
        
        return True

def main():
    # Check for enough arguments passed
    if len(sys.argv) < 4:
        print("Usage: python script.py <file1_path> <file2_path> <output_csv_path>")
        sys.exit(1)

    # Get file paths and output CSV name from arguments
    file1_path, file2_path, output_csv_path = sys.argv[1:]

    with open(file1_path, 'r') as file1, open(file2_path, 'r') as file2:
        reader1 = file1.readlines()
        reader2 = file2.readlines()

    reader1.pop(0) # delete first line because first line of all paths instrument files are empty line at the start of file
    reader2.pop(0)
    
    print(f"Comparison {file1_path} and {file2_path}:")
    if True == compare_text_files(reader1, reader2, output_csv_path):
        print("\tTwo files compared successfully.")
        print("\tComparison result saved to {}".format(file1_path, file2_path, output_csv_path))
    else:
        print("\033[91m Error: Files Lines not equal. \033[0m")
    
if __name__ == "__main__":
  main()