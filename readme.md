# dotfiles

## Installation 

To install, `cd` into the `dotfiles` directory and run: `./install.sh`

Consider executing `./diff.sh` before installing. It will copy the files that would be overwritten when the installation will run. You can then use `git status`
to check what will change and prevent loss of information (possibly generated).

```
./diff.sh
./install.sh
```

For VS Code, the `settings.json` needs to be moved to the dotfiles folder and a symlink needs to be created.
This can be done with the following commands:

```sh
mv ~/Library/Application\ Support/Code/User/settings.json ~/VSCode/ln -s ~/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```


## License

This software is licensed under the MIT license. For more information, read the [LICENSE](LICENSE) file.
