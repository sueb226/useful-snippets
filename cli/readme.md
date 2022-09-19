# Misc CLI commands 

## Remove files in directory
> rm file-name-*

## when rm file-name-* times out
> for f in filename-*; do rm "$f"; done   
### out filenames are they are deleted 
>for f in filename-*; do echo rm "$f"; rm "$f"; done 
