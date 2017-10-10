#!/usr/bin/env bash

# Install development packages in an Arch Linux based OS

desired_mirrors=United_States
enabled_mirrors=$(
grep Country < /etc/pacman.d/mirrorlist | \
  grep -oP '\w+$' | \
  sort -u | \
  paste -sd,
)

if [ "$desired_mirrors" != "$enabled_mirrors" ]; then
  sudo rankmirrors -g -c "$desired_mirrors"
fi

ensure_gpg_key() {
  local server=$1
  local key_id=$2

  gpg --list-keys "$key_id" > /dev/null || \
    gpg --keyserver "$server" --recv-keys "$key_id"
}

# Thomas Dickey, required for ncurses5-compat-libs
ensure_gpg_key hkp://pgp.mit.edu 702353E0F7E48EDB

set -euo pipefail
IFS=$'\n\t'

arch_packages=(
ansible
arc-gtk-theme
autojump
aws-cli
bash
bash-completion
bind-tools
chrome-gnome-shell
chromium
chromium-widevine
cloc
cmake
curl
dbeaver
deja-dup
dnsmasq
docker-compose
emacs
firefox
git
git-lfs-bin
gnome-boxes
gnome-clocks
gnome-mpv
gnome-weather
go
gpick
gvim
homesick
htop
imagemagick
jdk8-openjdk
jq
libinput-gestures
moreutils
ncurses5-compat-libs
neovim
nodejs
noto-fonts
npm
oh-my-zsh-git
postgresql-libs
powerline
powerline-fonts-git
pv
pygmentize
python
python-pip
python2
python2-boto
python2-pip
ripgrep
ruby
s3cmd
sbt
scala
shellcheck
sqlite
sublime-text-dev
sysdig
terraform
the_silver_searcher
tig
tmux
tree
ttf-ubuntu-font-family
universal-ctags-git
unzip
vagrant
virtualbox-bin
virtualbox-ext-oracle
virtualbox-host-dkms
visual-studio-code
wget
wireshark-gtk
xclip
yarn
zeal
zip
zsh
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
)

python_packages=(
aws-shell
neovim
pgcli
ptpython
py-mini-racer
vim-vint
)

pacaur_install () {
  package=$1
  echo "Installing $package"
  set +e

  if pacaur -Qs "^$package$" > /dev/null; then
    return
  fi
  set -e
  pacaur -S --noconfirm --noedit "$package"
}

for package in "${arch_packages[@]}"; do
  pacaur_install "$package"
done

for package in "${python_packages[@]}"; do
  pip install --user --upgrade "$package"
done

sudo usermod -aG docker "$USER"
sudo usermod -aG vboxusers "$USER"
sudo usermod -aG wireshark "$USER"
sudo usermod -aG input "$USER"
sudo chsh "$USER" --shell /bin/zsh
