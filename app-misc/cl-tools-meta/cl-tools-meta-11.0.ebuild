# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

DESCRIPTION="Calculate Linux (tools meta package)"
HOMEPAGE="http://www.calculate-linux.org"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="distro_CLD distro_CLDG distro_CLDX distro_desktop"

RDEPEND="
	distro_desktop? (
		app-admin/sudo
		dev-python/ipython
		dev-tcltk/expect
		sys-apps/calculate-client
		sys-apps/keyexec
		sys-apps/preload
		sys-auth/thinkfinger
		sys-power/acpi
		sys-power/acpid
		sys-power/cpufreqd
		sys-power/powernowd
		x11-apps/mesa-progs
		x11-apps/xdpyinfo
		x11-apps/xev
		x11-apps/xmessage
		x11-misc/xbindkeys

		app-arch/arj
		app-arch/bzip2
		app-arch/dump
		app-arch/p7zip
		app-arch/rar
		app-arch/unace
		app-arch/unarj
		app-arch/unzip
		app-arch/zip

		app-admin/hddtemp
		app-admin/testdisk
		app-cdr/cdrkit
		app-cdr/dvd+rw-tools
		app-misc/mc
		app-portage/emerge-delta-webrsync
		app-portage/genlop
		app-portage/gentoolkit-dev
		app-portage/portage-utils
		app-portage/ufed
		app-text/wgetpaste
		net-fs/nfs-utils
		sys-apps/acl
		sys-apps/hdparm
		sys-apps/lm_sensors
		sys-apps/memtest86+
		sys-apps/pciutils
		sys-apps/pv
		sys-apps/smartmontools
		sys-devel/prelink
		sys-fs/dmraid
		sys-fs/dosfstools
		sys-fs/e2fsprogs
		sys-fs/jfsutils
		sys-fs/mdadm
		sys-fs/mtools
		sys-fs/ntfs3g
		sys-fs/xfsprogs
		sys-kernel/module-rebuild
		sys-process/htop
	)
	distro_CLD? (
		sys-block/partitionmanager
	)
	distro_CLDG? (
		sys-block/gparted
		x11-misc/glipper
	)
	distro_CLDX? (
		sys-block/gparted
		x11-misc/ktsuss
		x11-terms/terminal
	)
"

# Base
RDEPEND="${RDEPEND}
	app-admin/logrotate
	app-admin/syslog-ng
	sys-apps/hotplug
	sys-process/vixie-cron
"

# Tools
RDEPEND="${RDEPEND} 
	app-misc/calculate-install-gui
	media-fonts/dejavu
	virtual/dhcpc
	sys-apps/pcmciautils
	sys-apps/usb_modeswitch
	x11-base/xorg-x11
	x11-terms/rxvt-unicode
	x11-wm/openbox
"
