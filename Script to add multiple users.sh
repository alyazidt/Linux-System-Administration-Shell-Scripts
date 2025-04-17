#!/bin/bash

usernames=("user1" "user2" "user3")

for username in "${usernames[@]}"
do
    if id "$username" &>/dev/null; then
        echo "User $username already exists. Skipping..."
    else
        # Create the user with a default password
        useradd -m -s /bin/bash "$username"
        echo "User $username created successfully."
        echo "$username:password123" | chpasswd
        echo "Default password set for $username."
    fi
done
