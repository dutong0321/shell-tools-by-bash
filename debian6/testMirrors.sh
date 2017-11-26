#!/bin/bash
mirrosLinks=(
http://archive.debian.org/debian/
http://archive-klecker.debian.org/debian-archive/debian/
http://archive-sibelius.debian.org/debian-archive/debian/
http://archive.debian.org/debian-archive/debian/
http://archive.kernel.org/debian-archive/debian/
http://debian.dynamica.it/debian-archive/debian/
http://debian.ethz.ch/debian-archive/debian/
http://debian.gtisc.gatech.edu/debian-archive/debian/
http://debian.inf.tu-dresden.de/debian-archive/debian/
http://debian.koyanet.lv/debian-archive/debian/
http://debian.mirror.cambrium.nl/debian-archive/debian/
http://debian.org.ua/debian-archive/debian/
http://debian.volia.net/debian-archive/debian/
http://ftp.hosteurope.de/mirror/archive.debian.org/debian/
http://ftp.kaist.ac.kr/debian-archive/debian/
http://ftp.riken.jp/Linux/debian/debian-archive/debian/
http://ftp.snt.utwente.nl/debian-archive/debian/
http://ftp.ticklers.org/debian-archive/debian/
http://hanzubon.jpdebian-archive/debian/
http://mirror.1000mbps.com/debian-archive/debian/
http://mirror.eu.oneandone.net/linux/distributions/debian/debian-archive/debian/
http://mirror.i3d.net/pub/debian-archive/debian/
http://mirror.math.princeton.edu/pub/debian-archive/debian/
http://mirror.mephi.ru/debian-archive/debian/
http://mirror.nl.leaseweb.net/debian-archive/debian/
http://mirror.one.com/debian-archive/debian/
http://mirror.t-home.mk/debian-archive/debian/
http://mirrors.accretive-networks.net/debian-archive/debian/
http://mirrors.advancedhosters.com/debian-archive/debian/
http://mirrors.fe.up.pt/debian-archive/debian/
)

rm log.txt

for mirrosLink in ${mirrosLinks[*]}
do
	start=$(date +%s)
	wget $mirrosLink"dists/squeeze-lts/main/Contents-i386.gz" 
	end=$(date +%s)
	time=$(( $end - $start ))
	echo $mirrosLink >> log.txt
	echo $time >> log.txt
done
