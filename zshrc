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
export CUDA_ROOT=/Developer/NVIDIA/CUDA-7.5
export PATH=/Developer/NVIDIA/CUDA-7.5/bin:$PATH
export PATH=/Users/tylerfolkman/dev_tools/kafka_2.11-0.10.0.0/bin:$PATH
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
export PATH=/usr/local/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
export PATH=~/anaconda/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.5/lib:$DYLD_LIBRARY_PATH
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/anaconda/lib/:$DYLD_FALLBACK_LIBRARY_PATH
export SPARK_HOME="/Users/tylerfolkman/spark-1.4.1-bin-hadoop2.6"
export PYSPARK_SUBMIT_ARGS="--master local[4] pyspark-shell"
export TERMINFO=/usr/share/terminfo
export EDITOR=vi
export VISUAL=vi
export R_HOME="/Users/tylerfolkman/anaconda/lib"
export PYTHONPATH="/Users/tylerfolkman/dev_tools/caffe/python:$PYTHONPATH"
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
alias zstart="zookeeper-server-start.sh /Users/tylerfolkman/dev_tools/kafka_2.11-0.10.0.0/config/zookeeper.properties"
alias kstart="kafka-server-start.sh /Users/tylerfolkman/dev_tools/kafka_2.11-0.10.0.0/config/server.properties"

# vim
bindkey -M vicmd "/" history-incremental-search-backward

#Source
#source /Users/tylerfolkman/anaconda/bin/virtualenvwrapper.sh
