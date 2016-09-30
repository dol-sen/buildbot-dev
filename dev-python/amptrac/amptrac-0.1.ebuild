# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7)

inherit distutils-r1

DESCRIPTION="Client for twisted's amp interface to trac"
HOMEPAGE="https://github.com/twisted-infra/amptrac https://pypi.python.org/pypi/amptrac"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=dev-python/twisted-13.0.0[${PYTHON_USEDEP}]
	dev-python/treq[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
