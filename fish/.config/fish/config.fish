#
# Aliases
#
alias ls 'ls -ah --color'

function lls --wraps=ls
    command ls -alh $argv | less -r
end

alias less 'less -r'

function search --wraps=find
    command find . -iregex $argv -prune 
end

alias du 'du -h'

alias ag 'ag --hidden'

alias music-dl "youtube-dl -f 'bestaudio' -o '%(playlist_index)02d - %(title)s.%(ext)s'"

alias hcurl 'curl --connect-timeout 10 --speed-time 10 --continue-at - --retry 999'

#
# Enironment variables
#

set PATH $PATH ~/.local/bin

#
# Chips
#
if [ -e ~/.config/chips/build.fish ] ; . ~/.config/chips/build.fish ; end
