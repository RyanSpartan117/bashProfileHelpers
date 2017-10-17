function gac() {
	git add "$1";
	git commit -m "$2";
}

function gdf() {
	git diff "$1";

function finddirectory() {
	find . -type d | grep "$1";
}

function firefoxtestrun() {
	IN_BROWSER_FIREFOX=true bundle exec cucumber -t "$1" --color;
}

function mkcd() { 
	NAME=$1; mkdir -p "$NAME"; cd "$NAME"; 
}

function up() { 
	DEEP=$1; for i in $(seq 1 ${DEEP:-"1"}); do cd ../; done; 
}

alias gst='git status';
alias gdrop='git stash; git stash drop;'

# cd - 