autoload -Uz vcs_info
precmd_functions+=( vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats '%F{200}[%b%u%c]%f'
zstyle ':vcs_info:*' enable git

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%~%b $vcs_info_msg_0_ $ '

PLUGINS="$HOME/dotfiles/plugins"

alias jest='yarn test --no-graphql'
alias identity-sms-code='cat "tmp/sms/$(ls tmp/sms/ | tail -1)" | grep -Eo "[0-9]{6}" | tail -1'
alias identity-email-code='cat "tmp/letter_opener/$(ls tmp/letter_opener/ | tail -1)/plain.html" | grep -E "[0-9]{6}"'

source "$PLUGINS/zsh-history-substring-search.zsh"
