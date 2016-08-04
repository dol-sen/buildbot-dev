# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5})

inherit distutils-r1

DESCRIPTION="Tools for twisted development"

HOMEPAGE="https://github.com/twisted/${PN} https://pypi.python.org/pypi/${PN}"

SRC_URI="https://github.com/twisted/${PN}/releases/tag/v${PV}"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

DEPEND="
	>=dev-python/twisted-13.0.0[${PYTHON_USEDEP}]
	dev-python/treq[${PYTHON_USEDEP}]
	>=dev-python/amptrac-0.1[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

#S=${WORKDIR}/${P}


