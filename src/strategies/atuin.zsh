
#--------------------------------------------------------------------#
# History Suggestion Strategy (atuin backend)						 #
#--------------------------------------------------------------------#
# Suggests the most recent history item that matches the given
# prefix.
#

_zsh_autosuggest_strategy_atuin() {
	# Reset options to defaults and enable LOCAL_OPTIONS
	emulate -L zsh

	typeset -g suggestion="$(atuin search --search-mode prefix --format {command} --limit 1 ${1})"
}
