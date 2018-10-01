# AWK script
BEGIN { FS = ","}   # Field Separator
{
    if ($4 ~ /([0-9]{2}|[0-9])\.([0-9]{2}|[0-9])\.(19|20)[0-9]{2}/)
    {
        print $2 ", from " $4 " to " $5
    }
}
