#!/bin/bash

# Prompt the user for the name of the new script
read -p "Enter the name of the new script: " script_name

# Add .sh extension to the script name (optional)
script_name="${script_name}.sh"

# Check if the script file already exists
if [ -e "$script_name" ]; then
    echo "A script with the name '$script_name' already exists. Please choose a different name."
    exit 1
fi

# Create the new script file with shebang and sample content
echo "#!/bin/bash" > "$script_name"
echo "# This is a new bash script named '$script_name'" >> "$script_name"

# Set the new script as executable
chmod +x "$script_name"

echo "Script '$script_name' created successfully and set as executable!"
