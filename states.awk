# AWK script
BEGIN { FS = ","}   # Field Separator
{
    print $4 ", " $1 ", " $2 ", " $3
}
