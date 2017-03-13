alias reload!='. ~/.zshrc'
alias acurl='curl $1 -H "Accept: $2"'
alias myip='ipconfig getifaddr en0'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias bc='bc -l'
alias browse='open -a "Google Chrome"'
alias greyscale='grayscale'
alias dotfiles='cd ~/.dotfiles && vim'
alias vagrant-rails 'vagrant ssh -c "cd /vagrant && bundle exec rails s"'

#directories
alias clients='cd ~/Sites/clients/'
alias elasticsearch-head='browse ~/src/elasticsearch-head/index.html'
alias find-process='ps ax | grep $1'
alias chrome-without-cors='open -a Google\ Chrome --args --disable-web-security'
alias -g sd='; afplay ~/Dropbox\ \(Personal\)/program-complete.wav'

