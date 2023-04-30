# Maintainer: Raindeer-OS
pkgname=rd_calamares_config
_destname1="/"
pkgver=23.25
pkgrel=1
pkgdesc="Calamares Config for Raindeer-OS"
arch=('any')
<<<<<<< HEAD
url="https://github.com/Raindeer-OS/"
=======
url="https://github.com/Raindeer-OS"
>>>>>>> a1e9aafba9f9e6895ab30b44dcfbf63b058ba1c9
license=('GPL3')
makedepends=('git')
depends=()
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
source=(${pkgname}::"git+${url}/${pkgname}")
sha256sums=('SKIP')
package() {
	install -dm755 ${pkgdir}${_destname1}
	cp -r ${srcdir}/${pkgname}${_destname1}/* ${pkgdir}${_destname1}
	rm ${pkgdir}${_destname1}/setup_git.sh
	rm ${pkgdir}${_destname1}/up.sh
	rm ${pkgdir}${_destname1}/README.md
	rm ${pkgdir}${_destname1}/LICENSE
	rm ${pkgdir}${_destname1}/PKGBUILD
}
