# File Archival Process

This repository contains a Bash script for automating the file archival process by managing files based on their age. The script checks the modification dates of files in a specified directory and performs actions such as deletion and compression according to a predefined lifecycle policy.

## Overview

As data accumulates over time, it becomes essential to manage storage efficiently. This script helps streamline the process of freeing up storage space by automatically handling files older than a specified duration. The implemented lifecycle policy is as follows:

- **Files up to 1 month old:** Retain as is.
- **Files older than 1 month but less than 6 months:** Compress the files using Gzip.
- **Files older than 6 months:** Delete the files.

## Features

- Automatically detects files in the specified directory.
- Deletes files older than 6 months.
- Compresses files older than 1 month but less than 6 months using Gzip.
- Outputs the actions taken for each file for easy tracking.

## Prerequisites

- Bash shell (macOS/Linux).
- Gzip utility (usually pre-installed on most systems).

## Usage

1. Clone this repository to your local machine:

   ```bash
   
   git clone https://github.com/shrirampiyer/Storage-Optmizer.git
   
```

2. Open the script file and set the TARGET_PATH variable to the directory containing the files you wish to manage:
   ```bash

nano script.sh
```

3.Update the TARGET_PATH variable:

   ```bash
TARGET_PATH="/path/to/your/directory"
```
4.Make the script executable:

   ```bash
chmod +x script.sh
```
5.Run the script:

   ```bash

./script.sh
```
