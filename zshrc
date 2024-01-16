# Path to your oh-my-zsh installation.
export ZSH="/Users/tromaniuk/.oh-my-zsh"

ZSH_THEME="miloshadzic"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
#For compilers to find mysql@5.6
export LDFLAGS="-L/usr/local/opt/mysql@5.6/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.6/include"

export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

alias be="bundle exec"

v() {
    case $1 in
    repo)
        gh repo view --web
        ;;
    pr)
        gh pr view --web
        ;;
    esac
}

[[ -f .erlang-version ]] && . ~/kerl/$(cat .erlang-version)/activat
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
