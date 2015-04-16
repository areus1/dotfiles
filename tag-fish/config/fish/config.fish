# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme agnoster 

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme git-flow z brew osx sublime vundle node export cask balias

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load up the wonderful nvm fish wrapper script
source $HOME/.config/fish/utils/nvm.fish

# Change fish prompt the powerline shell
function  fish_prompt
  ~/.powerline-shell.py $status --shell bare ^/dev/null
end

# Aliases
balias git 'hub'
balias g 'hub'
balias p 'cd ~/projects'
balias gc 'git commit -a'
balias gs 'hub status'
balias gco 'hub checkout'
balias gb 'hub branch'
balias gbr 'hub browse'
balias gpl 'hub pull'
balias gps 'hub push'
balias reload '. ~/.config/fish/config.fish'
balias j 'jobs'


function emptytrash
  sudo rm -rfv /Volumes/*/.Trashes;
  sudo rm -rfv ~/.Trash;
  sudo rm -rfv /private/var/log/asl/*.asl
end

