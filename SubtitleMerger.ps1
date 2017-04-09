$directory = "C:\Users\user\folder"
$mkvmergecommand = [String]"""C:/Program Files/MKVToolNix\mkvmerge.exe"" --ui-language en --output ^""%outputfile%^"" --language 0:und --default-track 0:yes --language 1:eng --default-track 1:yes ^""^(^"" ^""%mkvinputfile%^"" ^""^)^"" --language 0:eng ^""^(^"" ^""%srtinputfile%^"" ^""^)^"" --track-order 0:0,0:1,1:0"

$files = Get-ChildItem $directory -Filter "*.mkv" | Sort Name
Foreach ($file in $files) {
    $mkvinputfile = ($directory -replace "\\\\", "\\") + "\" + ($file.Name)
    $srtinputfile = ($directory -replace "\\\\", "\\") + "\" +(($file.Name -replace ".mkv", ".srt") -replace "_", ".")
    $outputfile =  ($directory -replace "\\\\", "\\") + "\merged\" + ($file.Name)
    $mergecommand = (($mkvmergecommand -replace "%outputfile%", $outputfile) -replace "%mkvinputfile%", $mkvinputfile) -replace "%srtinputfile%", $srtinputfile
    Write-Output $mergecommand
    cmd /c $mergecommand
}