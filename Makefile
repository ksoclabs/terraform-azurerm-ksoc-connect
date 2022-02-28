initialise:
	pre-commit install
	pre-commit run -a

# e.g. make changelog-{major,minor,patch}
changelog-%:
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s $* -o`
	semtag final -s $*
