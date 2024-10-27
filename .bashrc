# .bashrc

##------REMEMBER TO SOURCE THE FILE AFTER CHANGES ARE MADE!

##-------------------
#bash-prompt-generator.com
PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)';
PS1='\[\e[92m\]\u\[\e[0m\]@\[\e[38;5;214m\]${PS1_CMD1}\[\e[0m\] \[\e[38;5;139m\]\w\[\e[0m\]: '


##-------ALIASING------------
alias ls='ls --color=auto'
alias lsa='ls -la --color=auto'

alias compose='docker-compose'
alias dpsa="docker ps -a --format \"table {{.Image}}\t{{.ID}}\t{{.Ports}}\t{{.Status}}\t{{.Names}}\""
alias dps="docker ps -a --format \"table {{.Image}}\t{{.ID}}\t{{.Ports}}\t{{.Status}}\t{{.Names}}\""
alias fab='git branch -r | grep -v "\->" | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done'
alias mt5='wine ~/.wine/drive_c/"Program Files"/"MetaTrader 5"/terminal64.exe'

