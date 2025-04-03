#!/bin/bash

# copy the log.
cp ./log_file/debug_output.txt ./src/ndnSIM/logs/debug_output.txt

# Navigate to the project directory
cd ~/ndnSIM-test/ndnSIM-2.9-raw/src/ndnSIM

# Initialize a Git repository if it doesn't already exist
if [ ! -d .git ]; then
    git init
fi

# Add the remote repository
# git remote add origin https://github.com/zzhang154/Decentralized-Aggregation.git

# Add all files to the staging area
git add .

# Commit the changes
git commit -m "DecAgg-v3.1
(1) Truly implement the producer-consumer logic within the same node. In order to do this, we implement ndn forwarding and receiving logic from scratch. The files can be found in 'ndn-value-producer.cpp'.

BUGS:
Trash PIT entries as you can see at the end of the 'debug_output.txt'. This bug needs to be fixed, otherwise, it make takeup unnecessary resource consumption.
"

# Rename the branch to main
git branch -M main

# Force push the changes to the remote repository
git push -u origin main
# git push -u origin main --force