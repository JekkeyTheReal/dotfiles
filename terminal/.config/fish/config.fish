## Fish config

# PATH
export PATH="$HOME/.local/bin:$PATH"

# aliases
alias band="iw dev wlp0s20f3 link | grep freq | sed -e 's/^\s*//'"

function mkcdir ()
	mkdir -p -- "$argv[1]" &&
	cd -- "$argv[1]"
end

#promt vars
set -g BG "222"

# Prompt
function fish_prompt
	printf '%s%s%s%s%s%s\n%s>%s ' (set_color {$BG}) (set_color -b {$BG}) (set_color $fish_color_cwd) (prompt_pwd) (set_color -b normal) (set_color {$BG}) (set_color $fish_color_cwd) (set_color normal)
end

# Right side promt
function fish_right_prompt -d "Write out the right prompt"
	date '+%H:%M:%S'
end

# Greeter on new window
function fish_greeting
	echo "      /`·.¸
     /¸...¸`:·
 ¸.·´  ¸   `·.¸.·´)
: © ):´;      ¸  {
 `·.¸ `·  ¸.·´\`·¸)
     `\\´´\¸.·´"
end

if status is-interactive
# Commands to run in interactive sessions can go here
end
