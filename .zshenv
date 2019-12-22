export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

DISABLE_MAGIC_FUNCTIONS=true


# GEOMETRY THEME
ZSH_THEME="geometry/geometry"

GEOMETRY_STATUS_SYMBOL=🚀
GEOMETRY_STATUS_SYMBOL_ERROR=💩
GEOMETRY_INFO=""

GEOMETRY_GIT_SYMBOL_REBASE="\uE0A0" # set the default rebase symbol to the powerline symbol 
GEOMETRY_GIT_SYMBOL_STASHES=x       # change the git stash indicator to `x`
GEOMETRY_GIT_COLOR_STASHES=blue     # change the git stash color to blue
GEOMETRY_GIT_GREP=rg               # define which grep-like tool to use (By default it looks for rg, ag and finally grep)
GEOMETRY_GIT_NO_COMMITS_MESSAGE=""  # hide the 'no commits' message in new repositories
