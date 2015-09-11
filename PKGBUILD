# Maintainer: Zach Shelton <mail at zachofalltrades dot net>
pkgname=bubbleupnpserver
pkgver=0.9
pkgrel=1
pkgdesc="Stream UPnP content to Android devices over the Internet"
arch=('any')
url="http://www.bubblesoftapps.com/bubbleupnpserver/"
license=('custom:bubbleupnpserver')
depends=('jre' 'ffmpeg')
install=${pkgname}.install
source=("http://www.bubblesoftapps.com/bubbleupnpserver/BubbleUPnPServer-distrib.zip"
"${pkgname}.service"
"${pkgname}.install"
"${pkgname}.conf"
"${pkgname}.startd"
)
md5sums=('d3eb790bb99523cfcb7b17445da75a8c')

package() {

  msg2 "Converting upstart script..."
  echo "#!/bin/sh" > ${pkgdir}/usr/share/${pkgname}/${pkgname}.sh
  cat ${srcdir}/etc/init/${pkgname}.conf \
    | grep -vE '^(description|author|start on|stop on|respawn|script|end script)' \
    | sed -r 's/^(\t|env )//' \
    | sed '/^$/N;/^\n$/D' \
    >> ${pkgdir}/usr/share/${pkgname}/${pkgname}.sh

  install -D -m644 ${srcdir}/*.jar ${pkgdir}/usr/lib/${pkgname}
  install -D -m644 ${srcdir}/LICENCE.txt ${pkgdir}/usr/lib/${pkgname}/LICENSE
  install -D -m644 ${srcdir}/${pkgname}.service ${pkgdir}/usr/lib/systemd/system/${pkgname}.service
  install -D -m644 ${srcdir}/${pkgname}.startd ${pkgdir}/usr/bin/${pkgname}
  install -D -m644 ${srcdir}/${pkgname}.conf ${pkgdir}/etc/systemd/conf.d/${pkgname}.conf

}
