# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

##-----------------------------------------------------
## synth-shell-greeter.sh
#if [ -f /home/adminben/.config/synth-shell/synth-shell-greeter.sh ] && [ -n "$( echo $- | grep i )" ]; then
#	source /home/adminben/.config/synth-shell/synth-shell-greeter.sh
#fi

##-----------------------------------------------------
## synth-shell-prompt.sh
#if [ -f /home/adminben/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
#	source /home/adminben/.config/synth-shell/synth-shell-prompt.sh
#fi

##-----------------------------------------------------
## better-ls
#if [ -f /home/adminben/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
#	source /home/adminben/.config/synth-shell/better-ls.sh
#fi

##-----------------------------------------------------
## alias
#if [ -f /home/adminben/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
#	source /home/adminben/.config/synth-shell/alias.sh
#fi

##-----------------------------------------------------
## better-history
if [ -f /home/adminben/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/adminben/.config/synth-shell/better-history.sh
fi

##-------------------
#bash-prompt-generator.com
PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)'; PS1='\[\e[92m\]\u\[\e[0m\]@\[\e[38;5;214m\]${PS1_CMD1}\[\e[0m\] \[\e[38;5;139m\]\w\[\e[0m\]: '

