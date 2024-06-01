# .bashrc

##------REMEMBER TO SOURCE THE FILE AFTER CHANGES ARE MADE!

##-------------------
#bash-prompt-generator.com
PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)';
PS1='\[\e[92m\]\u\[\e[0m\]@\[\e[38;5;214m\]${PS1_CMD1}\[\e[0m\] \[\e[38;5;139m\]\w\[\e[0m\]: '


##-------ALIASING------------
alias compose='docker-compose'
alias ..='cd ..'
alias dpsa="docker ps -a --format \"table {{.Image}}\t{{.ID}}\t{{.Ports}}\t{{.Status}}\t{{.Names}}\""
alias dps="docker ps -a --format \"table {{.Image}}\t{{.ID}}\t{{.Ports}}\t{{.Status}}\t{{.Names}}\""
