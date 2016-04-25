# Maintainer: Zach Shelton <mail at zachofalltrades dot net>
pkgname=bubbleupnpserver
pkgver=0.9.18
pkgrel=2
pkgdesc="Stream UPnP content to Android devices over the Internet"
arch=('any')
url="http://www.bubblesoftapps.com/bubbleupnpserver/"
groups=()
license=('custom:bubbleupnpserver')
depends=('java-runtime-headless>=7' 'ffmpeg')
makedepends=('unzip')
provides=('${pkgname}')
install=${pkgname}.install
source=("http://www.bubblesoftapps.com/bubbleupnpserver/BubbleUPnPServer-distrib.zip"
"${pkgname}.service"
"${pkgname}.install"
"${pkgname}.conf"
"${pkgname}.sh"
)
backup=("etc/conf.d/${pkgname}")
md5sums=('52e98b77760b5fa59895c92bf96d1d59'
         '202f4f553306602eb4de63e0aee1a927'
         '0176f077669fd050940aac68599c8587'
         'fba049b6a68c180b31e264b521f18042'
         '190d1fa9cf1daa35c57379803194232c')

package() {
# boilerplate systemd file placement...
  install -D -m755 ${srcdir}/${pkgname}.sh ${pkgdir}/usr/bin/${pkgname}
  install -D -m644 ${srcdir}/${pkgname}.service ${pkgdir}/usr/lib/systemd/system/${pkgname}.service
  install -D -m644 ${srcdir}/${pkgname}.conf ${pkgdir}/etc/conf.d/${pkgname}

# package specific library extraction...
  install -D -m644 ${srcdir}/LICENCE.txt ${pkgdir}/usr/lib/${pkgname}/LICENSE
  install -D -m644 ${srcdir}/*.jar ${pkgdir}/usr/lib/${pkgname}

}
