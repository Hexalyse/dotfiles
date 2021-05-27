# Dotfiles

This repository contains my dotfiles. They are managed with `stow`, so they are packaged in subfolders with names corresponding to "sets" of dotfiles you can activate by using `stow` to symlink to them.

Example: To import the fish configuration, just execute `stow fish` and it will symlink all the config files related to fish - note that you must have NO dotfiles present for fish, or symlinks won't be created. Remember that it creates them in the parent directory, so it's best to clone the repository in your homedir (/home/hexalyse/dotfiles, for me)
