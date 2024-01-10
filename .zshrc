# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# https://github.com/zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5c469c,bg=cyan,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

#For example, this would bind ctrl + space to accept the current suggestion.
bindkey '^ ' autosuggest-accept

export TERM=xterm

ZSH_THEME="powerlevel10k/powerlevel10k"

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# bindkey
bindkey "^U"    backward-kill-line
bindkey "^u"    backward-kill-line
bindkey "^[l"   down-case-word
bindkey "^[L"   down-case-word

# alt+<- | alt+->
bindkey "^[f" forward-word
bindkey "^[b" backward-word

# ctrl+<- | ctrl+->
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

cd ~

alias ls="exa --icons"
alias ll="exa --icons"
alias bat="bat --style=auto"
alias vi="lvim"
alias v="nvim"
alias bv='cd "/mnt/g/Meu Drive/Clientes/BoaVista"'
alias projbv='cd "/mnt/c/TOTVS/BV/Projeto/"'

source /opt/asdf-vm/asdf.sh

fpath=(~/.zsh/zsh-completions/src $fpath)

ZSH_CUSTOM=~/.oh-my-zsh/custom
 plugins=(
      git
      git ssh-agent
      zsh-syntax-highlighting
	    zsh-history-substring-search
      zsh-fzf-history-seach
      zsh-completions
      zsh-autosuggestions
   )
HISTFILE=~/.zsh_history
HISTORY=10000
SAVEHIST=10000
#fc -R ~/.zsh_history


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#FZF_DEFAULT_COMMAND=n'ps -ef' \
  #fzf --bind 'ctrl-r:reload(eval "$FZF_DEFAULT_COMMAND")' \
      #--header 'Press CTRL-R to reload' --header-lines=1 \
      #--height=50% --layout=reverse


# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-fzf-history-search/zsh-fzf-history-search.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

 fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
alias cat='bat'
alias bv="cd '/mnt/c/TOTVS/BV/Projeto/BOA VISTA SERVICOS SA - TAALX9/Versão P12.1.33/Fontes'"
#bv
alias busca='~/busca.sh'
alias addprw='git status | grep modified | awk '{print }' | grep -i prw | git add'
alias chat='shell-genie ask'
alias compras='find -name '\''*.py'\'' | grep -v '\''_init_.py'\''| grep -vi '\''main*'\'' | grep -v '\''CFGTESTCASE'\'' | grep -v '\''__init__.'\'' | grep -v '\''runner'\'' | grep -vi '\''testsuite'\''| grep compras'
alias estoque='find -name '\''*.py'\'' | grep -v '\''_init_.py'\''| grep -vi '\''main*'\'' | grep -v '\''CFGTESTCASE'\'' | grep -v '\''__init__.'\'' | grep -v '\''runner'\'' | grep -vi '\''testsuite'\''| grep estoque'
alias faturamento='find -name '\''*.py'\'' | grep -v '\''_init_.py'\''| grep -vi '\''main*'\'' | grep -v '\''CFGTESTCASE'\'' | grep -v '\''__init__.'\'' | grep -v '\''runner'\'' | grep -vi '\''testsuite'\''| grep faturamento'
alias financeiro='find -name '\''*.py'\'' | grep -v '\''_init_.py'\''| grep -vi '\''main*'\'' | grep -v '\''CFGTESTCASE'\'' | grep -v '\''__init__.'\'' | grep -v '\''runner'\'' | grep -vi '\''testsuite'\''| grep financeiro'
alias quantFontes="cd /mnt/c/TOTVS/TIR/tir-protheus/ && echo 'Quantidade de Fontes: \n Compras, Estoque, Faturamento, Financeiro, Contabilidade, Livros Fiscais, Ativo Fixo' && compras | wc -l && estoque | wc -l && faturamento | wc -l && financeiro | wc -l && contabilidade | wc -l && fiscal | wc -l && ativo_fixo | wc -l"
#alias chat='python -m pipx run shell-genie ask'
#shell-genie is already on your PATH and installed at /home/rvvas/.asdf/installs/python/3.11.0/bin/shell-genie. Downloading and
#    running anyway.

# Historico 

SAVEHIST=1000
HISTSIZE=5000
HISTFILE=$HOME/.zhistory
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

# export PATH="$PATH:$HOME/.shell-genie"
# export PATH=$PATH:/home/rvvas/.asdf/installs/python/3.11.0/bin/shell-genie

