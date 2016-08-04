# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5} pypy)

inherit distutils-r1

DESCRIPTION="Pure-Python HPACK header compression"

HOMEPAGE="http://python-hyper.org/${PN} https://pypi.python.org/pypi/{PN}"

SRC_URI="https://github.com/python-hyper/${PN}/releases/tag/v${PV}"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

#S=${WORKDIR}/${P}


