pdftops -upw $1 $2 "$2.ps"
ps2pdf "$2.ps" "$2-nopass.pdf"
rm "$2.ps"