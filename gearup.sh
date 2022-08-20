#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

git_checkouts() {
    loc_name="$1"
    loc_url="$2"

    if [ ! -d "${loc_name}" ]; then
        echo "git clone ${loc_url}"
        git clone "${loc_url}"
    else
        echo "git pull -> ${loc_name}"
        cd "${loc_name}"
        git pull
        cd -
    fi
}


brew_install() {
    PACKAGE="$1"
    EXPLICIT_CASK="$2"

    # Test if installed
    INSTALLED=$(brew list | grep -E "^${PACKAGE}\$")

    if [ -n "${INSTALLED}" ]; then
        echo "$PACKAGE is already installed"
        return
    fi


    # Not installed
    if [ -z "${EXPLICIT_CASK}" ]; then
        brew install "${PACKAGE}"
    else
        brew install --cask "${PACKAGE}"
    fi
}


# Spice the sudo
echo "Spice sudo"
sudo id -a


# Basic tools first
brew_install automake
brew_install dos2unix
brew_install gettext

brew_install nmap
brew_install hydra
brew_install sqlmap
brew_install metasploit
brew_install hashcat
brew_install john
brew_install nikto
brew_install maltego
#brew_install recon-ng
brew_install theharvester
brew_install exiftool
brew_install network-radar cask
brew_install keepassxc cask
brew_install gnu-tar
brew_install iterm2
brew_install wireshark
brew_install htop
brew_install ddrescue
brew_install pdnsrec
brew_install aircrack-ng
brew_install arp-scan
brew_install arping
brew_install arp-sk
brew_install docker
brew_install signal
brew_install libreoffice cask
brew_install gimp cask
brew_install inkscape cask
brew_install macvim cask
brew_install mattermost cask
brew_install jitsi-meet cask
brew_install whatsapp cask


brew_install brew-pip

sudo python3 -m pip install alive-progress
sudo python3 -m pip install alive-progress
sudo python3 -m pip install requests
sudo python3 -m pip install dnspython
sudo python3 -m pip install beautifulsoup4
# sudo python3 -m pip install libratom


if [ ! -d "~/dvl/" ]; then
    mkdir ~/dvl/
fi

cd ~/dvl/

git_checkouts certassurance                     git@github.com:okoeroo/certassurance.git
git_checkouts certificate-handling              git@github.com:okoeroo/certificate-handling.git
git_checkouts certificate-monitor-scanner       git@github.com:okoeroo/certificate-monitor-scanner.git
git_checkouts certificate-transparency-tools    git@github.com:okoeroo/certificate-transparency-tools.git
git_checkouts cifs_helper                       git@github.com:okoeroo/cifs_helper.git
git_checkouts crt-and-elastic                   git@github.com:okoeroo/crt-and-elastic.git
git_checkouts dedupstepper                      git@github.com:okoeroo/dedupstepper.git
git_checkouts domainhuntress                    git@github.com:okoeroo/domainhuntress.git
git_checkouts hash-slinger                      git@github.com:okoeroo/hash-slinger.git
git_checkouts laura                             git@github.com:okoeroo/laura.git
git_checkouts log4jcheck                        git@github.com:okoeroo/log4jcheck.git
git_checkouts pyDANETLSA                        git@github.com:okoeroo/pyDANETLSA.git
git_checkouts scalpel                           git@github.com:okoeroo/scalpel.git
git_checkouts scan-for-dns                      git@github.com:okoeroo/scan-for-dns
git_checkouts tlsa_generator                    git@github.com:okoeroo/tlsa_generator.git
git_checkouts mailprocessing                    git@github.com:okoeroo/mailprocessing.git
git_checkouts testssl.sh                        https://github.com/drwetter/testssl.sh.git
git_checkouts netdiscover                       https://github.com/netdiscover-scanner/netdiscover.git
git_checkouts nmap-vulners                      https://github.com/vulnersCom/nmap-vulners
git_checkouts vulscan                           https://github.com/scipag/vulscan

