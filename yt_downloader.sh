
#!/bin/bash 

input="links.txt"
while IFS= read -r line
do
  	echo "$line"
	youtube-dl --extract-audio --audio-format mp3 $line
   
done < "$input"
