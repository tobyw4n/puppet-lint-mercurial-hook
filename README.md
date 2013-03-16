puppet-lint-mercurial-hook
==========================

Copy puppet-lint-mercurial-hook.sh into ~/bin/ and add the following to [hooks] in .hg/hgrc

		pretxncommit.puppet_lint = ~/bin/pre-commit-puppet-lint.sh