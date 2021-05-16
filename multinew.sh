#!/bin/sh

# Setup your default Code Workspace
WORKSPACE='Codes'

echo "┌── Multi / Action ──┐"
echo "│ 1. Create          │"
echo "│ 2. Open            │"
echo "│ 3. Delete          │"
echo "│ 4. Edit            │"
echo "└────────────────────┘"
read ACTION

if [ $ACTION = '1' ] ; then
    cd
    cd $WORKSPACE
    echo "┌── Multi / Language ──┐"
    echo "│ 1. Python            │"
    echo "│ 2. C#                │"
    echo "│ 3. Html              │"
    echo "│ 4. Shel              │"
    echo "│ 5. React             │"
    echo "│ 6. Java              │"
    echo "└──────────────────────┘"
    read LANGUAGE

    if [ $LANGUAGE = '1' ] ; then
        
    elif [ $LANGUAGE = '2' ] ; then
    
    elif [ $LANGUAGE = '3' ] ; then
    
    elif [ $LANGUAGE = '4' ] ; then

    elif [ $LANGUAGE = '5' ] ; then
    
    elif [ $LANGUAGE = '6' ] ; then

    fi

    git init
    touch .gitignore
    touch README.md
    git add *
    git commit -m "Initial Commit"
  fi
elif [ $ACTION = '2' ] ; then

elif [ $ACTION = '3' ] ; then

elif [ $ACTION = '4' ] ; then

else
	
fi
