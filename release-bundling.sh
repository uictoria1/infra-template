#! /bin/bash

echo "Started release log."
echo "Getting tag count."
TAG_COUNT=$(git tag -l | wc -l)
echo "Tag count: $TAG_COUNT."

MESSAGE="ответственный за релиз"

if [ $TAG_COUNT = "0"]; then
  echo "There is not tags in this repository."
  echo "Exiting from script."
  exit 0
elif [ $TAG_COUNT = "0" ]; then
  MESSAGE="$MESSAGE $author"
  GIT_LOGS=$(git log --format='%H <%an> $s')
  MESSAGE="$MESSAGE\n$GIT_LOGS"
  echo $MESSAGE;
  echo "Finished logging."
  exit 0
else
  MESSAGE="$MESSAGE $author"
  GIT_LOGS=$(git log --format='%H <%an> $s')
  MESSAGE="$MESSAGE\n$GIT_LOGS"
  echo $MESSAGE;
  echo "Finished logging."
  exit 0



echo ""
current_branch=$(git rev-parse --abbrev-ref HEAD)

if [ $? != "0" ]; then
  echo "Invalid exit code from previous command: $?"
  echo "Exiting the script"
  exit 0;
fi
  
echo "Current branch is: '$current_branch'."

echo "Starting to match branch name with regex pattern of rc-0.0.[0-9]+."
if [[ $current_branch =~ rc-0.0.[0-9]+ ]]; then
  echo "'$current_branch' is MATCHED to pattern of rc-0.0.[0-9]+."

else
  echo "'$current_branch' is NOT MATCHED to pattern of rc-0.0.[0-9]+."
  echo "Exiting the script"
fi
  exit 0;

exit 0