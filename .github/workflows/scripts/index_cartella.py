import os
import json

def create_flat_folder_structure(path, base_path=""):
    # Initialize the result dictionary
    result = {}

    # Check if the path is a directory
    if not os.path.isdir(path):
        return result

    # Iterate over the entries in the directory
    for entry in os.listdir(path):
        entry_path = os.path.join(path, entry)
        relative_path = os.path.join(base_path, os.path.splitext(entry)[0])  # Remove file extension for the key

        # If the entry is a directory, recursively call the function
        if os.path.isdir(entry_path):
            result.update(create_flat_folder_structure(entry_path, relative_path))
        else:
            # If the entry is a file, add it to the dictionary with its relative path (without extension) as the key
            # and the full URL (with extension) as the value
            result[relative_path.replace("\\", "/")] = f"https://teamcodealchemists.github.io/docs/{os.path.join(base_path, entry).replace('\\', '/')}"

    return result

# Specify the path to the folder you want to create the JSON for
folder_path = 'compiled/'

# Call the function to create the JSON representation
folder_json = create_flat_folder_structure(folder_path)

# Convert the dictionary to a JSON string with indentation
folder_json_str = json.dumps(folder_json, indent=4)

# Specify the path to the output file
output_file = 'compiled/index.json'

# Save the JSON representation of a folder structure
with open(output_file, 'w') as f:
    # Write the JSON string to the file
    f.write(folder_json_str)

# Print a confirmation message with the output file path
print("JSON saved to", output_file)
