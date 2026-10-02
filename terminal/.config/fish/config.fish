## Fish config

# PATH
export PATH="$HOME/.local/bin:$PATH"

# default editor
export EDITOR=vim

# aliases
alias band="iw dev wlp0s20f3 link | grep freq | sed -e 's/^\s*//'"

alias wetter="curl https://wttr.in/reutlingen"

function clip ()
	timeout -s SIGINT "$argv[1]" wf-recorder -f ~/Videos/clips/clip_$(date '+%Y-%m-%d_%H:%M:%S.mp4')
end

function mkcdir ()
	mkdir -p -- "$argv[1]" &&
	cd -- "$argv[1]"
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	command rm -f -- "$tmp"
end

# theme
fish_config theme choose catppuccin-mocha-custom --color-theme=dark

# promt vars
set -g BG "1e1e2e"

# Prompt
function fish_prompt
	printf '%s%s%s%s%s%s\n%s>%s ' (set_color {$BG}) (set_color -b {$BG}) (set_color $fish_color_cwd) (prompt_pwd -d 3) (set_color -b normal) (set_color {$BG}) (set_color $fish_color_cwd) (set_color normal)
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

zoxide init fish --cmd cd | source
