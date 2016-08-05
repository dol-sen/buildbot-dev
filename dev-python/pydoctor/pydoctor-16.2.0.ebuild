# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7 pypy)

inherit distutils-r1

DESCRIPTION="API doc generator"

HOMEPAGE="http://github.com/twisted/pydoctor"

SRC_URI="https://github.com/twisted/${PN}/releases/tag/${PV}"

LICENSE="MIT X11"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE=""

DEPEND="dev-python/twisted[${PYTHON_USEDEP}]
	dev-python/epydoc[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

#S=${WORKDIR}/${P}


