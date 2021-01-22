This is a simple Arch Linux auto ricing script. It is great for quickly setting up a working environment on a new Arch installation, or as a canvas for further personal customization.


## Installation
0. I recommend reading the files before installing it.
1. Install Arch/Artix Linux (or anything that you know will work).
2. Make a new test user (or use your own):
```
# Bash as the default shell is required. 
# Group wheel is not required, but you'll have to install the programs manually.

useradd -m -g wheel -s /bin/bash username
passwd username
```
3. Sign into that user and clone this repo:
```
# This should not be deleted, so best to have it hidden.

git clone https://github.com/tonijarjour/autorice.git ~/.dotfiles
```
4. Run `bash install.sh`, then reboot once the script finishes.
