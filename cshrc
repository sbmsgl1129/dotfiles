# .cshrc
#
# This file is read by csh or tcsh when they start.  Only put csh
# specific things (aliases, csh variables) here.  Exported environment
# variables should be in .envrc, and path changes in .pathrc.

#WORD OF ADVICE : Add the things only which u understand in u r cshrc. Dont Blindly Copy.

# Do not take the following lines out unless you're really sure of
# what you are doing.
set defaultsdir=/usr/local/lib/initfiles
if ( -r $defaultsdir/system-cshrc ) source $defaultsdir/system-cshrc

##

#Adding aliases and shortcuts to make life easier
#Mostly taken from Thiyaga - he is the BOSS )liases

# aliases ---

# ls aliases
alias ll ls -l
alias lf ls -F
alias lh ls -lh
alias d "ls -lL | grep '^d'"
# chmod aliases
alias cx  'chmod +x'
alias c+w 'chmod +w'
alias c-w 'chmod -w'
# less aliases
alias l    'less -n'
#alias lr   'less -n -R'
#alias lrg  'less -n -R +G'
# sort aliases
alias su   'sort | uniq -c'
alias sus  'sort | uniq -c | sort -nr'
alias sush 'sort | uniq -c | sort -nr | head'
# head / tail aliases
alias h    'head'
alias tl    'tail'
#extracting items from logs
#alias e 'sed "s/.*\!\!:1[ ]*\([^ ]*\).*/\1/"'
alias e "perl -lne '{print (/\s+\!\!:1\s*(\S+)/)}'"
# refresh
alias sc 'source ~/.cshrc'
#alias ss 'source ~/.solaris_bindkey_hack'
alias c clear

# variables ----
# make double tab show complete list
set autolist=ambiguous
