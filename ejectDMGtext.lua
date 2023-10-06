-- Get a list of all mounted volumes
set mountedVolumes to do shell script "hdiutil info | grep 'image-path' | awk -F ': ' '{print $2}'"

-- Eject all mounted volumes (excluding the startup disk)
repeat with vol in paragraphs of mountedVolumes
    set volName to text 2 thru -2 of vol
    if volName is not equal to "/" then
        do shell script "hdiutil eject " & quoted form of volName
    end if
end repeat
