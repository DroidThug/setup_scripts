# Dependencies inorder for this to work
# ebook-tools (shell: yum install ebook-tools)
# calibre  (shell: yum install calibre)
# mmv (shell: yum install mmv)
# Usage: ./ebookconvert.sh input_format output_format (e.g: ./ebookconvert.sh epub mobi)
# Copyright (C) 2017-3690 Sai Vishal
$1=in
$2=out
for docu in $(ls *.$in)
do
     ebook-convert $docu $docu.$out
     mmv '*.$in.$out' '#1.$out'
     mkdir output
     cp -r *$out output/
     echo "Converted files succesfully to $out format at $PWD/output"
done
