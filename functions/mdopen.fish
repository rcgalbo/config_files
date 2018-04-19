function mdopen -d 'open a markdown file with livedown'
  if test -f $argv
    livedown start $argv --open &
  else
    echo "$argv not found"
  end
end
