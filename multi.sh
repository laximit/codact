#!/bin/sh

WORKSPACE="Codes"
EDITOR="nvim"

cd
cd $WORKSPACE

if [ $1 = "create" ] ; then
  if [ ! -e $2 ] ; then
    echo "Please choose a valid language"
    exit
  else
    cd $2
    mkdir $3
    cd $3

    case $2 in
    Python)
      touch module.py
      ;;
    Csharp)
      dotnet new console
      ;;
    Html)
      mkdir html css js assets
      touch html/index.html
      touch css/style.css
      touch js/app.js
      ;;
    Shell)
      echo "#!/bin/sh" >> script.sh
      ;;
    React)
      cd ..
      rm -rf $3
      npx create-react-app $3
      cd $3
      ;;
    Java)
      mkdir src res
      touch src/main.java
      ;;
    esac

    git init
    touch .gitignore
    touch README.md
    git add *
    git commit -m "Initial Commit"
    $EDITOR
  fi
elif [ $1 = "open" ] ; then
  if [ ! -e $2 ] ; then
    echo "Please choose a valid language"
    exit
  else
    cd $2  
    if [ ! -e $3 ] ; then
      echo "Please choose a valid project"
      exit
    else
      cd $3
      $EDITOR
    fi
  fi
elif [ $1 = "delete" ] ; then
  if [ ! -e $2 ] ; then
    echo "Please choose a valid language"
    exit
  else
    cd $2  
    if [ ! -e $3 ] ; then
      echo "Please choose a valid project"
      exit
    else
      echo "Are you sure?"
      read CONFIRM

      if [ $CONFIRM = "yes" ] ; then
        rm -rf $3
      else
        exit
      fi
    fi
  fi
else
  echo "Please choose a valid action (create, open or delete)"
  exit
fi
