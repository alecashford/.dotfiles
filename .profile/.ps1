# Colors!
# Regular colors
black="\[\033[0;30m\]"        # Black
red="\[\033[0;31m\]"          # Red
green="\[\033[0;32m\]"        # Green
yellow="\[\033[0;33m\]"       # Yellow
blue="\[\033[0;34m\]"         # Blue
purple="\[\033[0;35m\]"       # Purple
cyan="\[\033[0;36m\]"         # Cyan
white="\[\033[0;37m\]"        # White

# Bold colors
bBlack="\[\033[1;30m\]"       # Black
bRed="\[\033[1;31m\]"         # Red
bGreen="\[\033[1;32m\]"       # Green
bYellow="\[\033[1;33m\]"      # Yellow
bBlue="\[\033[1;34m\]"        # Blue
bPurple="\[\033[1;35m\]"      # Purple
bCyan="\[\033[1;36m\]"        # Cyan
bWhite="\[\033[1;37m\]"       # White

# Reset colors
color_off="\[\033[0m\]"       # Text Reset

get_branch() {
  BRANCH="$(git symbolic-ref --short -q HEAD 2> /dev/null)"
  if [[ ! -z $BRANCH ]]
  then
    echo " ($BRANCH)"
  fi
}

get_emoji() {
  emojis=(🌍 🌏 🌎 🔥 🍀 🍉 🍕 🚀 💎 🍔 🌲)
  RANDOM=$(date +%j)
  EMOJI=${emojis[$RANDOM % ${#emojis[@]}]}
  echo "$EMOJI"
}

HOST='\h'
# TIME="\D{%F %T} "
TIME="\D{%-m/%-d} \t "
LOCATION="\w"
BRANCH='$(get_branch)'
EMOJI='$(get_emoji)'
PROMPT="\n$EMOJI  "
export PS1=$bRed$TIME$bGreen$USER$bWhite@$bCyan$HOST$bWhite:$bBlue$LOCATION$bYellow$BRANCH$color_off$PROMPT