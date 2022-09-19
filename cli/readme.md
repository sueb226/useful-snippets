# Misc CLI commands 

## Remove files in directory
> rm file-name-*

## When rm file-name-* times out
> for f in filename-*; do rm "$f"; done   
### Output filenames as they are deleted 
>for f in filename-*; do echo rm "$f"; rm "$f"; done 
