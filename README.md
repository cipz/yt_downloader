# Simple bash yt_downloader script
This script downloads one by one the youtube links in the 'links.txt' file and saves them in mp3 format in the 'output' folder.
These can be changed with:
```
-f | --file
  path to a valid file containing youtube links
  
-d | --destination
  path to a folder in which the extracted audio in mp3 format will be downloaded
```
## youtube-dl
This script is just a wrapper for a [youtube-dl](https://github.com/ytdl-org/youtube-dl) command.
Hence it is necessary to have it installed and up to date.
