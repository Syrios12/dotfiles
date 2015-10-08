#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export WORKON_HOME=$HOME/.virtualenvs
export SCALA_HOME="/usr/local/share/scala-2.10.5"
export PATH=~/anaconda/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export SPARK_HOME="/Users/tylerfolkman/spark-1.4.1-bin-hadoop2.6"
export PYSPARK_SUBMIT_ARGS="--master local[4] pyspark-shell"
export TERMINFO=/usr/share/terminfo
# export DATABASE_URL=postgres:///$(tylerfolkman)

export MARKPATH=$HOME/.marks
function jump { 
	cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
	mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
	rm -i "$MARKPATH/$1"
}
function marks {
	ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

# aliases
alias untar='tar -zxvf'
alias hstart="/usr/local/Cellar/hadoop/2.6.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.6.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/stop-dfs.sh"

# vim
bindkey -M vicmd "/" history-incremental-search-backward

#Source
source /Users/tylerfolkman/anaconda/bin
