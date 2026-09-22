function mts_by_modify --description 'Move files into YYYY/MM based on ModifyDate'
    for f in $argv
        if not test -f "$f"
            echo "Skipping (not a file): $f"
            continue
        end

        set dt (exiftool -s -s -s -ModifyDate "$f")

        if test -z "$dt"
            echo "No EXIF ModifyDate: $f"
            continue
        end

        set parts (string split : $dt)
        set ym "$parts[1]/$parts[2]"

        mkdir -p "$ym"
        mv "$f" "$ym/"
    end
end

