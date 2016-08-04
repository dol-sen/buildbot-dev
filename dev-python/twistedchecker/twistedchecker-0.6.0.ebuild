# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5})

inherit distutils-r1

DESCRIPTION="A Twisted coding standard compliance checker"

HOMEPAGE="https://github.com/twisted/twistedchecker https://pypi.python.org/pypi/TwistedChecker"

SRC_URI="https://github.com/twisted/${PN}/releases/tag/${PV}"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

DEPEND="
	dev-python/pylint[${PYTHON_USEDEP}]
	>=dev-python/logilab-common-0.62.0[${PYTHON_USEDEP}]
	dev-python/pep8-1.5.7[${PYTHON_USEDEP}]
	>=dev-python/twisted-15.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyflakes-0.8.1[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

#S=${WORKDIR}/${P}


