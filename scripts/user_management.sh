#!/bin/bash
# Description: Adds a new Linux user with a home directory
# Usage: ./user_management.sh <username>

USERNAME=$1

if [ -z "$USERNAME" ]; then
  echo "Usage: ./user_management.sh <username>"
  exit 1
fi

sudo useradd -m "$USERNAME"
echo "User $USERNAME created successfully"
