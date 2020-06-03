
#!/bin/bash 

declare -a arr=("https://youtu.be/3Mfhavvvjqw")

for i in "${arr[@]}"
do
	echo "$i"
	youtube-dl --extract-audio --audio-format mp3 $i
   
done
