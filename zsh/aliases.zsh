# Reload zsh
alias reload!='. ~/.zshrc'

# Allow aliases to be used with sudo
alias sudo="sudo "

# Navigation
alias ..="cd .."

# Enable colored grep output
alias grep='grep --color=auto'

# list files setings
alias ls='ls -G'
alias ll='ls -AlhFG'

# Access hosts file
alias hosts='sudo vim /etc/hosts'

# Clear screen
alias c='clear'

# Open google chrome with a particular url
alias chrome="open -a 'Google Chrome'"

# Command Frequency
alias cmdfreq='cat ~/.bash_history | cut -d " " -f1 | sort | uniq -c | sort -g | sort -rn | head'
