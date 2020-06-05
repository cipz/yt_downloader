
#!/bin/bash 

# A script to automatically download mp3s from given YouTube links
# https://www.devdungeon.com/content/taking-command-line-arguments-bash

clear

echo "Starting yt_downloader.sh"

input="links.txt"
destination_folder="output"

help () {
	echo "
	-f | --file:
		file containing the yt links (one per line)

	-d | --destination
		destination folder where the audio will be downloaded

	-h | --help
		this help menu
	"
}

parse_args () {

	# echo "There are $# arguments"
	# echo "parse_args"

	while :; do
		case $1 in
			-h|--help) 
				help
				exit 0
			;;
			-f|--file) 
				shift
				input="$1"
			;;
			-d|--destination) 
				shift
				destination_folder="$1"
			;;
			*) break
		esac
		shift
	done

}

if test $# -gt 0
then
	parse_args $@
#else
#	echo "No arguments have been passed."
fi

echo ""
echo "Looking for links in \"$input\""
echo "Saving songs in \"$destination_folder\""
echo ""

output_command="-o $destination_folder/%(title)s.%(ext)s"

while IFS= read -r line
do
  	echo "Downloading \"$line\""
	youtube-dl -f 'bestaudio' --extract-audio --audio-format mp3 $output_command $line
	echo ""
done < "$input"

echo "Script correctly ended"
exit 0