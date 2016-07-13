# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5} pypy)

inherit distutils-r1

DESCRIPTION="A sphinx extension to include jinja based templates into a sphinx doc"

HOMEPAGE="https://pypi.python.org/pypi/sphinx-jinja"

SRC_URI="https://github.com/tardyp/sphinx-jinja/archive/${PV}.tar.gz -> sphinx-jinja-0.2.2_rc1.tar.gz"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

DEPEND=">=dev-python/sphinx-1.0[${PYTHON_USEDEP}]"

RDEPEND="${DEPEND}"

S="${WORKDIR}/sphinx-jinja-0.2.2.dev1"

src_prepare() {
	distutils-r1_python_prepare_all
}
