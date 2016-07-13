# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7 )

inherit eutils distutils-r1

DESCRIPTION="GitHub API client implemented using Twisted"

HOMEPAGE="https://github.com/tomprince/txgithub https://pypi.python.org/pypi/txgithub"

SRC_URI="https://github.com/tomprince/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

IUSE="test"

RDEPEND="
	>=dev-python/twisted-core-12.3.0[${PYTHON_USEDEP}]
	>=dev-python/twisted-web-12.3.0[${PYTHON_USEDEP}]
	dev-python/pyopenssl[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"
