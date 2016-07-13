# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"
PYTHON_REQ_USE="sqlite"
PYTHON_COMPAT=( python2_7 )

EGIT_REPO_URI="git://github.com/buildbot/buildbot.git"

[[ ${PV} == *9999 ]] && inherit git-r3
inherit git-r3 distutils-r1

MY_PV="${PV/_p/p}"
MY_V="0.9.0rc1"
MY_P="${PN}-${MY_V}"

DESCRIPTION="BuildBot common www build tools for packaging releases"
HOMEPAGE="http://trac.buildbot.net/ https://github.com/buildbot/buildbot http://pypi.python.org/pypi/buildbot"
[[ ${PV} == *9999 ]] || SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"

if [[ ${PV} == *9999 ]]; then
	KEYWORDS=""
else
	KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-interix ~amd64-linux ~x86-linux ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris"
fi

RDEPEND="
	=dev-util/buildbot-${PV}[${PYTHON_USEDEP}]
	dev-python/mock[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}
	>=dev-python/setuptools-21.2.1[${PYTHON_USEDEP}]
"

S=${WORKDIR}/${PN}-${MY_PV}/pkg

python_install_all() {
	distutils-r1_python_install_all
}
