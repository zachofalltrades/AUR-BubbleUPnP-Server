# Maintainer: Zach Shelton <mail at zachofalltrades dot net>
pkgname=bubbleupnpserver
pkgver=0.9.19
pkgrel=2
pkgdesc="Stream UPnP content to Android devices over the Internet"
arch=('any')
url="http://www.bubblesoftapps.com/bubbleupnpserver/"
license=('custom:bubbleupnpserver')
depends=('java-runtime-headless>=7' 'ffmpeg')
makedepends=('unzip')
install=${pkgname}.install
source=(
"http://www.bubblesoftapps.com/bubbleupnpserver/BubbleUPnPServer-distrib.zip"
"${pkgname}.service"
"${pkgname}.conf.d"
"${pkgname}.sh"
)
backup=("etc/conf.d/${pkgname}")
md5sums=('83e4df8da91f577a138143ceecd6d120'
         '9dfc0370c39f6c15811ac50dcdd9e243'
         '145f5ddf862c9f6791dbaa6764f310ad'
         '3641f0a6b545cc7d04949e25529a0fc5')

package() {
# boilerplate systemd file placement...
  install -D -p -m644 ${srcdir}/${pkgname}.service ${pkgdir}/usr/lib/systemd/system/${pkgname}.service
  install -D -p -m644 ${srcdir}/${pkgname}.conf.d  ${pkgdir}/etc/conf.d/${pkgname}
  install -D -p -m755 ${srcdir}/${pkgname}.sh      ${pkgdir}/usr/bin/${pkgname}

# default data directory
  install -m755 -d ${pkgdir}/var/lib/${pkgname}

# custom license file from extracted source...
  install -D -m644 ${srcdir}/LICENCE.txt ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
  
# package specific library extraction...
  install -d ${pkgdir}/usr/lib/${pkgname}
  install -p -D ${srcdir}/*.jar ${pkgdir}/usr/lib/${pkgname}
}
