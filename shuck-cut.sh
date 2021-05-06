echo "Make sure the file you want to export is in your Downloads folder."
echo "If not there already, copy it to the Downloads folder now."
cd ~/Downloads
$input = Read-Host "Enter the File name with extension of the Video you want dead frames removed from. Example: myvideo.mp4 "
$output = Read-Host "What would you like to name your new file? Make sure to add the extension at the end. Example: decimated.mp4"
ffmpeg -i $input -vf mpdecimate,setpts=N/FRAME_RATE/TB -an $output
