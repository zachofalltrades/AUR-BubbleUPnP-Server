# Maintainer: Zach Shelton <mail at zachofalltrades dot net>
pkgname=bubbleupnpserver
pkgver=0.9.19
pkgrel=2
pkgdesc="Stream UPnP content to Android devices over the Internet"
arch=('any')
url="http://www.bubblesoftapps.com/bubbleupnpserver/"
groups=()
license=('custom:bubbleupnpserver')
depends=('java-runtime-headless>=7' 'ffmpeg')
makedepends=('unzip')
install=${pkgname}.install
source=(
"http://www.bubblesoftapps.com/bubbleupnpserver/BubbleUPnPServer-distrib.zip"
"${pkgname}.service"
"${pkgname}.conf"
"${pkgname}.sh"
)
backup=("etc/conf.d/${pkgname}")
md5sums=('83e4df8da91f577a138143ceecd6d120'
         'c43830abe8fd94217989a362ae0e0a43'
         'fba049b6a68c180b31e264b521f18042'
         '190d1fa9cf1daa35c57379803194232c')

package() {
# boilerplate systemd file placement...
  install -D -m755 ${srcdir}/${pkgname}.sh ${pkgdir}/usr/bin/${pkgname}
  install -D -m644 ${srcdir}/${pkgname}.service ${pkgdir}/usr/lib/systemd/system/${pkgname}.service
  install -D -m644 ${srcdir}/${pkgname}.conf ${pkgdir}/etc/conf.d/${pkgname}

# custom license file from extracted source...
  install -D -m644 ${srcdir}/LICENCE.txt ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
# package specific library extraction...
  install -d ${pkgdir}/usr/lib/${pkgname}
  install -p -D ${srcdir}/*.jar ${pkgdir}/usr/lib/${pkgname}
}
