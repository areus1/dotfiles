function store
	if set -q storeFile
        mv ~/.storetmp/$storeFile .
        set -e storeFile
    else
        set -g storeFile $argv
        mv $argv ~/.storetmp/
    end
end
