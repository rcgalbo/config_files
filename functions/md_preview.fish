function md_preview -d 'open a markdown file with vim livedown'
  if test -f $argv
    vi $argv -c ":LivedownPreview"
  else
    echo "$argv not found"
  end
end
