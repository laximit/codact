#!/bin/sh

# Setup your default Code Workspace and Text Editor/IDE
WORKSPACE='Codes'
EDITOR='nvim'


# $1 = Action
# $2 = Language (in Edit mode: Workspace)
# $3 = Project Name (in Edit mode: Editor)

if [ $1 = "create" ] ; then
  cd
  cd $WORKSPACE
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
  cd
  cd $WORKSPACE
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
  cd
  cd $WORKSPACE
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
elif [ $1 = "edit" ] ; then
  echo "WORKSPACE: "$2
  echo "EDITOR: "$3
  echo "Is this okay?"
  read CONFIRM
  if [ $CONFIRM = "yes" ] ; then
    sed -i "4c\WORKSPACE='$2'" multi.sh
    sed -i "5c\EDITOR='$3'" multi.sh
    exit
  else
    exit
  fi
else
  echo "Please choose a valid action (create, open or delete)"
  exit
fi
