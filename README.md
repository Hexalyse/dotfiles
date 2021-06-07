# Dotfiles

This repository contains my dotfiles.

## How this repo is organized

You will find different branches, corresponding to different themes/styles I made (they can use different Window Managers). The readme of each branch may contain screenshots of examples screens of what you can get visually, using those dotfiles.

The `main` branch may or may not correspond to what I'm using currently, so do refer to the branches for the most up-to-date version of each theme.

## How dotfiles are stored and how to use them

Dotfiles in this repo are supposed to be used with `stow`. They are packaged in subfolders with names corresponding to "sets" of dotfiles you can activate by using `stow` to symlink to them. This way, you can easily import only part of them, without having to copy files around.

Example: To import the fish configuration files, just execute `stow fish` in the root directory of this repo and it will symlink all the config files related to fish - note that you must have NO dotfiles present for fish, or symlinks won't be created. So you'll need to delete your *.config/fish/* directory - back it up first!

Remember that stow creates the symlink in the parent directory to where you're executing the command, so it's best to clone the repository in your homedir (*~/dotfiles/*).
 