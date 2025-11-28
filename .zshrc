# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Custom alias
alias conf="nano ~/.zshrc"
alias src="source ~/.zshrc"
alias cl="clear"
alias py="python3"
alias ipy="ipython3"
alias pt="ptpython"

# membuat file dan cd langsung
function mc() {
  mkdir -p "$1" && cd "$1"
}

# initial repo
repo() {
  git init && git add .
  read "msg?Commit message: " || return
  [[ -z "$msg" ]] && echo "❌ Pesan kosong." && return
  git commit -m "$msg" || return
  git branch -M main
  read "url?Remote repo URL: " || return
  [[ -z "$url" ]] && echo "❌ URL kosong." && return
  git remote add origin "$url" && git push -u origin main
}

export PATH="$HOME/.local/bin:$PATH"
