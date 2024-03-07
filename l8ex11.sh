#!/usr/bin/bash


while IFS= read -r NAME; do
    #check for the existence of the user's home directory
    if [ ! -d "/home/$NAME" ]; then
      #user account does not exist, create the user
      sudo useradd -c "Account for $NAME" -s /usr/bin/bash -d /home/$NAME -m "$Name"
      echo "$(date): Account created for  $NAME" &>> l8ex11-log.sh
      echo "Account has been created for $NAME"


    #Create  .ssh directory and generate SSH keys
    sudo mkdir -p "/home/$NAME/.ssh"
    sudo ssh-keygen -t ed25519 -f  "/home/$NAME/.ssh/id_ed25519_$NAME" -N "" 
    sudo chown -R "$NAME":"$NAME" "/home/$NAME/.ssh"
   echo "$(date): SSH keys created for  $NAME" &>> l8ex11-log.sh
   echo "SSH keys have been  created  for  $NAME"
else

   echo  "Account  for $NAME already exists, skipping...."
fi

done < roster.txt
