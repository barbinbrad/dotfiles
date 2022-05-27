# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

plugins=(alias-finder  brew common-aliases copydir copyfile docker docker-compose dotenv encode64 extract git jira jsontools node npm npx osx urltools vscode web-search z)


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(pyenv init -)"


eval "$(direnv hook zsh)"

. /usr/local/opt/asdf/libexec/asdf.sh

alias up="cd .. && ls"
alias dcd="docker compose down --remove-orphans"
alias dcu="docker compose up -d"
alias dcl="docker compose logs --tail 20"
alias add="git add *"
alias commit="git commit -m"
alias checkout="git checkout"
alias clone="git clone"
alias fetch="git fetch --all"
alias merge="git merge"
alias push="git push"
alias pull="git pull"

