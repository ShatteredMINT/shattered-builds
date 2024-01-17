# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# WARNING: this is way too basic to be actually used... proceed with caution

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} pypy3 )

inherit distutils-r1

DESCRIPTION="Termux language server (for ebuilds)"

HOMEPAGE="https://github.com/termux/termux-language-server"
SRC_URI="https://github.com/termux/termux-language-server/releases/download/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

# Upstream does not provide documentation for tests
RESTRICT="test"

pkg_postinst() {
	ewarn ""
	ewarn "WARNING: this ebuild is not at all complete... proceed with caution"
}
