function actvenv -d 'activate virtual env'
	if test -e $argv
    source $argv/bin/activate.fish
  else
    echo "the env %s doesnt exist\n" $argv
  end
end
