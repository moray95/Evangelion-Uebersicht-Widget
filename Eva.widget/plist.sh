tmpfile=`mktemp`
app="$1.app"
plist="/Applications/$app/Contents/Info.plist"
cp "$plist" "$tmpfile"
plutil -convert xml1 "$tmpfile"
cat "$tmpfile"
