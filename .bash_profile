# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
# for file in ~/.{aliases}; do
# 	[ -r "$file" ] && [ -f "$file" ] && source "$file";
# done;
# unset file;
source ~/.aliases
export PATH="$HOME/.cargo/bin:$PATH"

# Add go to PATH
export PATH="$HOME/go/bin:$PATH"
