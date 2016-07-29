#!/bin/sh
args=()
until [ -z "$1" ]; do
  case "$1" in
    -p|--project) project="$2"; shift 2 ;;
    -o|--op) op="$2"; shift 2 ;;
    -f|--folder)  folder="$2";  shift 2 ;;
    --) shift ; break ;;
    -*) echo "invalid option $1" 1>&2 ; shift ;; # or, error and exit 1 just like getopt does
    *) args+=("$1") ; shift ;;
  esac
done
echo "project: $project ; folder: $folder"
echo '$@:' $@
args+=("$@")
for arg in "${args[@]}" ; do
    echo "++ ${arg}"
done

path="/www/dev-green/docs/orgs/ees/$project"
lpath="/n/swqa/$(echo $project | tr '[a-z]' '[A-Z]')/${project}.lanl.gov/"
echo $lpath 
sftp lucia@publish.lanl.gov <<EOF
cd $path
lcd $lpath
cd $folder
lcd $folder
$op related_links.inc
bye
EOF