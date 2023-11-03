#!/bin/bash

# Navigate to the directory
cd ~/tech-vault-q2

# Extract the backup archive
tar -xzf ~/tech-vault-q2/2025-linux-perm-adjustment/backup.tar.gz

# Set permission "0664" for all extracted files
find . -type f -exec chmod 0664 {} +

# Set permission "0775" for all extracted directories
find . -type d -exec chmod 0775 {} +

# Change owner and group for all extracted items (adjust as per your system's user/group)
chown -R zubayda:staff ~/tech-vault-q2/Linux-Automation-Project/2025-linux-perm-adjustment/

# Create a new archive with adjusted files & directories
tar -czf /tmp/fixed-archive.tar.gz .
