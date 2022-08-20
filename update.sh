sudo id -a 

softwareupdate -l --install --all

sudo id -a 

brew update
brew upgrade

sudo id -a 

pip3 list --outdated --format=freeze | awk -F '==' '{print $1}' | xargs -n1 sudo pip3 install -U
