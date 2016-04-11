param([string]$SearchPath)

$ListOfVideoAndSubtitleFileExtensions = @(".264",".3G2",".3GP",".3GP2",".3GPP",".3GPP2",".3MM",".3P2",".60D",".787",".890",".AAF",".AEC",".AEP",".AEPX",".AET",".AETX",".AJP",".ALE",".AM",".AMC",".AMV",".AMX",".ANIM",".ANX",".AQT",".ARCUT",".ARF",".ASF",".ASX",".AVB",".AVC",".AVCHD",".AVD",".AVI",".AVP",".AVS",".AVS",".AVV",".AWLIVE",".AXM",".AXV",".BDM",".BDMV",".BDT2",".BDT3",".BIK",".BIN",".BIX",".BMC",".BMK",".BNP",".BOX",".BS4",".BSF",".BU",".BVR",".BYU",".CAMPROJ",".CAMREC",".CAMV",".CED",".CEL",".CINE",".CIP",".CLK",".CLPI",".CMMP",".CMMTPL",".CMPROJ",".CMREC",".CMV",".CPI",".CPVC",".CST",".CVC",".CX3",".D2V",".D3V",".DASH",".DAT",".DAV",".DB2",".DCE",".DCK",".DCR",".DCR",".DDAT",".DIF",".DIR",".DIVX",".DLX",".DMB",".DMSD",".DMSD3D",".DMSM",".DMSM3D",".DMSS",".DMX",".DNC",".DPA",".DPG",".DREAM",".DSY",".DV",".DV",".DV4",".DVDMEDIA",".DVR",".DVR",".DVX",".DXR",".DZM",".DZP",".DZT",".EDL",".EVO",".EVO",".EXO",".EYE",".EYETV",".EZT",".F4F",".F4P",".F4V",".FBR",".FBR",".FBZ",".FCARCH",".FCP",".FCPROJECT",".FFD",".FFM",".FLC",".FLH",".FLI",".FLV",".FLX",".FPDX",".FTC",".G64",".GCS",".GFP",".GIFV",".GL",".GOM",".GRASP",".GTS",".GVI",".GVP",".GXF",".H264",".HDMOV",".HDV",".HKM",".IFO",".IMOVIELIBRARY",".IMOVIEMOBILE",".IMOVIEPROJ",".IMOVIEPROJECT",".INP",".INT",".IRCP",".IRF",".ISM",".ISMC",".ISMCLIP",".ISMV",".IVA",".IVF",".IVR",".IVS",".IZZ",".IZZY",".JMV",".JSS",".JTS",".JTV",".K3G",".KDENLIVE",".KMV",".KTN",".LREC",".LRV",".LSF",".LSX",".LVIX",".M15",".M1PG",".M1V",".M21",".M21",".M2A",".M2P",".M2T",".M2TS",".M2V",".M4E",".M4U",".M4V",".M75",".MANI",".META",".MGV",".MJ2",".MJP",".MJPEG",".MJPG",".MK3D",".MKV",".MMV",".MNV",".MOB",".MOD",".MODD",".MOFF",".MOI",".MOOV",".MOV",".MOVIE",".MP21",".MP21",".MP2V",".MP4",".MP4",".MP4V",".MPE",".MPEG",".MPEG1",".MPEG2",".MPEG4",".MPF",".MPG",".MPG2",".MPG4",".MPGINDEX",".MPL",".MPL",".MPLS",".MPROJ",".MPSUB",".MPV",".MPV2",".MQV",".MSDVD",".MSE",".MSH",".MSWMM",".MT2S",".MTS",".MTV",".MVB",".MVC",".MVD",".MVE",".MVEX",".MVP",".MVP",".MVY",".MXF",".MXV",".MYS",".NCOR",".NSV",".NTP",".NUT",".NUV",".NVC",".OGM",".OGV",".OGX",".ORV",".OSP",".OTRKEY",".PAC",".PAR",".PDS",".PGI",".PHOTOSHOW",".PIV",".PJS",".PLAYLIST",".PLPROJ",".PMF",".PMV",".PNS",".PPJ",".PREL",".PRO",".PRO4DVD",".PRO5DVD",".PROQC",".PRPROJ",".PRTL",".PSB",".PSH",".PSSD",".PVA",".PVR",".PXV",".QT",".QTCH",".QTINDEX",".QTL",".QTM",".QTZ",".R3D",".RCD",".RCPROJECT",".RCREC",".RCUT",".RDB",".REC",".RM",".RMD",".RMD",".RMP",".RMS",".RMV",".RMVB",".ROQ",".RP",".RSX",".RTS",".RTS",".RUM",".RV",".RVID",".RVL",".SBK",".SBT",".SBZ",".SCC",".SCM",".SCM",".SCN",".SCREENFLOW",".SDV",".SEC",".SEC",".SEDPRJ",".SEQ",".SFD",".SFERA",".SFVIDCAP",".SIV",".SMI",".SMI",".SMIL",".SMK",".SML",".SMV",".SNAGPROJ",".SPL",".SQZ",".SRT",".SSF",".SSM",".STL",".STR",".STX",".SVI",".SWF",".SWI",".SWT",".TDA3MT",".TDT",".TDX",".THEATER",".THP",".TID",".TIVO",".TIX",".TOD",".TP",".TP0",".TPD",".TPR",".TREC",".TRP",".TS",".TSP",".TTXT",".TVLAYER",".TVRECORDING",".TVS",".TVSHOW",".USF",".USM",".VBC",".VC1",".VCPF",".VCR",".VCV",".VDO",".VDR",".VDX",".VEG",".VEM",".VEP",".VF",".VFT",".VFW",".VFZ",".VGZ",".VID",".VIDEO",".VIEWLET",".VIV",".VIVO",".VIX",".VLAB",".VMLF",".VMLT",".VOB",".VP3",".VP6",".VP7",".VPJ",".VRO",".VS4",".VSE",".VSP",".VTT",".W32",".WCP",".WEBM",".WFSP",".WLMP",".WM",".WMD",".WMMP",".WMV",".WMX",".WOT",".WP3",".WPL",".WSVE",".WTV",".WVE",".WVX",".WXP",".XEJ",".XEL",".XESC",".XFL",".XLMV",".XML",".XMV",".XVID",".Y4M",".YOG",".YUV",".ZEG",".ZM1",".ZM2",".ZM3",".ZMV");
function FileIsAVideoOrSubtitleFile(){
    Param([string] $extension )

    if($ListOfVideoAndSubtitleFileExtensions.Contains($extension.ToUpper())){
        return $True;
    }
    return $False;
}


function CouldFileBeRenamedBasedOnNameInfo(){
    Param([string] $fileName )

    $result = @("","","");
    if($fileName.Replace("."," ") -imatch "(.*?)(?=s(?:eason)?\W+([0-9]+)\W+e(?:pisode)?\W*([0-9]+)|s([0-9]+).*e([0-9]+)|(\d+)x(\d+))"){
        $matches[0] = [regex]::Replace($matches[0], "([a-zA-Z0-9]+.*[a-zA-Z0-9]).*", '$1');
        
        if( $TrimmedFileName -eq ""){
            return $null;
        }
        #$result = @{};
        $result[0] = $matches[0];
        if($matches[2] -eq $null -or $matches[2] -eq ""){
            
            $result[1] = $matches[4];
            $result[2] = $matches[5];
        }
        else{
            $result[1] = $matches[2];
            $result[2] = $matches[3];
        }
        if($result[0] -imatch "(.*?)(?=\d{4})"){
            $result[0] = $matches[1].Trim();
        }

        return $result;
    }
    return $null;
}


function CouldFileBeRenamedFromFolderStructure(){
    Param([System.IO.FileInfo] $file)

    $folders = $file.DirectoryName.Trim("\").Split("\");
   
    $tvShowName = $folders[-2];
    $season = $folders[-1];
    $episode = $file.BaseName;


    $result = @("","","");
    if($episode.Replace("."," ") -imatch  "(?:episode|e)\D*([0-9]+).*"){
        $result[2] = $matches[1];
    }
    if($season.Replace("."," ") -imatch "(?:season|s)\D([0-9]+).*"){
        $result[1] = $matches[1];
    }
    $result[0] = $tvShowName;
    if($result[0] -and $result[1] -and $result[2]){
        return $result;
    }
    return $null;

}


function Get-DamerauLevenshteinDistance {	
    Param ([string] $String1, [string] $String2)	
    $Length1 = $String1.length	
    $Length2 = $String2.length	
    $Global:Hash_Matrix = @{}	
    # Create Matrix	
    for ($i=0;$i -lt ($Length1 + 1);$i++) {	
        $Hash_Matrix[$i] = [array]::CreateInstance([int],($Length2 + 1))	
    }	
    for ($i=0;$i -lt $Length1; $i++) {
        $Hash_Matrix[$i][0] = $i	
    }
    for ($j=0;$j -lt $Length2; $j++) {
        $Hash_Matrix[0][$j] = $j	
    }	
    for ($i=1;$i -lt $Length1;$i++) {
	    for ($j=1;$j -lt $Length2;$j++) {
	        if ($String1[$i -1] -eq $String2[$j -1]) {
        	    $Cost = 0	
            }	
            else {
        	    $Cost = 1	
            } 
            $Hash_Matrix[$i][$j] = (@(($Hash_Matrix[$i-1][$j]) + 1;
            ($Hash_Matrix[$i][$j-1]) + 1;($Hash_Matrix[$i-1][$j-1]) + $Cost)|sort-object)[0]
            if ( ($i -gt 1) -AND ($j -gt 1) -AND ($String1[$i -1] -eq $String2[$j -2]) -AND ($String1[$i -2] -eq $String2[$j -1])){	
                $Hash_Matrix[$i][$j] = (@(($Hash_Matrix[$i][$j]);($Hash_Matrix[$i-2][$j-2] + $Cost))|sort-object)[0]	
            }	
        }
    }
    $Hash_Matrix[$Length1 -1][$Length2 -1]
}


$TvShowNameToIdHashtable = @{};
$api_key = "db7694866e51fa5fae2d5c3d83c8d876"
function LookUpIdOfTvShow(){
    Param([string] $name)
    $idFromHashTable = Get-IdFromTvShowNameToIdHashtable $name;
    if($idFromHashTable -ne $null){
        return $idFromHashTable;
    }

    # make request to get the id of tv show
    $url = "http://api.themoviedb.org/3/search/tv?api_key=$api_key&query=$name";
    $content = GetContentFromHttpRequest $url;
    if($content -eq $null -or !$content.results.id -or !$content.results.name){
        return $null;
    }
    else{
        $idApi = $content.results.id[0];
        $TVShowNameApi = @($content.results.name)[0];
        if( Is-TvShowNameIsWithinTheErrorMargin $name $TVShowNameApi){
            $TvShowNameToIdHashtable.Add($TVShowNameApi, $idApi);
        }
        return @($idApi,$TVShowNameApi)
    }
}


function Is-TvShowNameIsWithinTheErrorMargin{
    Param( [string] $tvShowNameFromFile,[string] $tvShowNameFromApi )
    
    $numberOfDifferences = Get-DamerauLevenshteinDistance $tvShowNameFromFile $tvShowNameFromApi;
    $DifferencePercentage = $numberOfDifferences / [math]::Max($tvShowNameFromApi.Length, $tvShowNameFromFile.Length);
    if($DifferencePercentage -le 0.5){
        return $true;
    }
    return $false;
}


function Get-IdFromTvShowNameToIdHashtable(){
    Param([string] $name)

    foreach ($entry in $TvShowNameToIdHashtable.GetEnumerator()) {
        if( Is-TvShowNameIsWithinTheErrorMargin $name $entry.Key ){
            return @($entry.Value, $entry.Key);
        }
    }
    return $null;
}


function LookUpEpisodeName(){
    Param([string]$id, [int] $seasonNumberString, [int] $episodeNumberString)

    $seasonNumber = [int]$seasonNumberString;
    $episodeNumber = [int]$episodeNumberString;

    $url = "http://api.themoviedb.org/3/tv/$id/season/$seasonNumber/episode/${episodeNumber}?api_key=$api_key";
    $content = GetContentFromHttpRequest $url;
    if($content -eq $null){
        return $null;
    }else{
        $episodeName = $content.name;
        return $episodeName
    }
}


function GetContentFromHttpRequest(){
    Param([string]$url)
    
    $HTTP_Response = try { Invoke-WebRequest $url } catch { $_.Exception.Response }
    if ($HTTP_Response.StatusCode -ne "200") { 
        return $null;
    }
    else {
        $result = ConvertFrom-Json $HTTP_Response.Content;
        return $result;
    }
}


function GenerateNewName(){
    Param([string] $tvShowName, [int] $seasonNumber, [int] $episodeNumber, [string] $episodeName)

    if($tvShowName -eq $null -or $tvShowName -eq ""){
        return $null;
    }
    # ShowName/Season X/ShowName - sXXeYY - Optional_Info.ext
    $seasonNumberString = $seasonNumber.ToString() ;
    if($seasonNumberString.Length -eq 1){
        $seasonNumberString = "0" + $seasonNumberString;
    }

    $episodeNumberString = $episodeNumber.ToString();
    if($episodeNumberString.Length -eq 1){
        $episodeNumberString = "0" + $episodeNumberString;
    }
    if($episodeName -eq ""){
        $modifiedName = $tvShowName + " - s" + $seasonNumberString + "e" + $episodeNumberString;
    }
    else{ 
        $modifiedName = $tvShowName + " - s" + $seasonNumberString + "e" + $episodeNumberString + " - " + $episodeName;
    }

    return $modifiedName;
}


function RenameAndMoveFile{
    Param([System.IO.FileInfo] $file, [string]$newName, [int] $seasonNumber, [string]$tvShowName)

    if( !($newName -or $tvShowName -or $seasonNumber -or $file) ){
        return;
    }
    $newName = Remove-InvalidFileNameChars $newName
    $newFileName = $newName + $file.Extension;


    # Move the file
    $path = $file.PSDrive.Name + ":\TV Shows\"+ $tvShowName + "\Season "+ $seasonNumber;
    New-Item -ItemType directory -Path $path -ErrorAction Ignore > $null;
    
    if("${path}\${newFileName}" -ne $file.FullName){
        if(Test-Path "${path}\${newFileName}" ){
            Move-ItemWithCollision $path $file.FullName $newName $file.Extension;
        }
        else{
            Move-Item -LiteralPath  $file.FullName -Destination "${path}\${newFileName}" -Confirm;
        }
    }
}


function Remove-InvalidFileNameChars {
  param([String]$Name)

  $invalidChars = [IO.Path]::GetInvalidFileNameChars() -join ''
  $re = "[{0}]" -f [RegEx]::Escape($invalidChars)
  return ($Name -replace $re)
}


function Move-ItemWithCollision(){
    Param([string] $newPathWithOutFile, [string] $oldpathWithFileName,
          [string] $fileNameWithoutExtension, [string] $extension)
    $MovedFile = $false;
    $FileNumber = 0;
    Do {
        $FileNumber++;
        $NameWithCopyNumber = "${fileNameWithoutExtension}(${FileNumber})${extension}"

        $testPath = "${path}\${NameWithCopyNumber}";

        if(!(Test-Path "$testPath") ){
            Move-Item -LiteralPath $oldpathWithFileName -Destination "${path}\${NameWithCopyNumber}" -Confirm ;
            $MovedFile = $true;
        }
        
    } while(!$MovedFile)
}


function Get-TvShowFileInfo(){
    Param([System.IO.FileInfo] $file)

    #All info is in the name
    $result = CouldFileBeRenamedBasedOnNameInfo $file.BaseName;
    
    if($result -eq $null){
        # Folder name = TV show Name, folder name = Season number, file name = episode number 
        $result = CouldFileBeRenamedFromFolderStructure $file;
    }
    return $result;
}


function main(){
    if(!$SearchPath -or !(Test-Path $SearchPath)){
        Write-Output "Parameter SearchPath has to be set to the search directory."
        return;
    }

    $allFiles = Get-ChildItem -Path $SearchPath -Recurse -File | Where {$_.FullName -notlike "*:\TV Shows\*"}; 
    ForEach( $file in $allFiles){

        if( FileIsAVideoOrSubtitleFile $file.Extension ){
                        
            $matchedFields =  Get-TvShowFileInfo $file

            if($matchedFields -ne $null){
                $matchedFields[0] = (Get-Culture).TextInfo.ToTitleCase($matchedFields[0].Trim());
           
                # get TV show name and id from api
                $TvShowIdAndNameApi = LookUpIdOfTvShow $matchedFields[0];
                $seasonNumber= [convert]::ToInt32($matchedFields[1], 10);
                $episodeNumber = [convert]::ToInt32($matchedFields[2], 10);

                if($TvShowIdAndNameApi -ne $null){
                    $tvShowIdApi = $TvShowIdAndNameApi[0];
                    $tvShowNameApi =  $TvShowIdAndNameApi[1];

                    # get episode name from api
                    $episodeNameApi = LookUpEpisodeName $tvShowIdApi $seasonNumber $episodeNumber;
            
                    # generate new name with episode name taken from api
                    if($episodeNameApi){
                        $GeneratedName = GenerateNewName $tvShowNameApi $seasonNumber $episodeNumber $episodeNameApi;
                    }else{
                        $GeneratedName = GenerateNewName $tvShowNameApi $seasonNumber $episodeNumber "";
                    }
                                    
                    # rename the file and move file to new location if needs to be
                    RenameAndMoveFile $file $GeneratedName $seasonNumber $tvShowNameApi

                }else{
                                
                    # generate new name
                    $GeneratedName = GenerateNewName $matchedFields[0] $seasonNumber $episodeNumber "";
                
                    # rename the file and move file to new location if needs to be
                    RenameAndMoveFile $file $GeneratedName $seasonNumber $tvShowNameApi
                }            
            }
    
        }
    }
}


main;