#!/bin/bash.exe
export MOBAEXTRACTONTHEFLY="no"
/bin/busybox.exe tar --overwrite --exclude=bin/cygwin1.dll --exclude=usr/bin/cygwin1.dll --exclude=/bin/cygwin1.dll --exclude=/usr/bin/cygwin1.dll -C / -Z -xvJf "`/bin/cygpath.exe -u "C:\Users\ADMINI~1\DOWNLO~1\MOBAXT~1\root\slash\var\apt\cache\noarch\release\ansible\ansible-2.8.4-1.tar.xz"`" > "/etc/setup/ansible-2.8.4-1.tar.xz.lst"
builtin echo "ansible ansible-2.8.4-1.tar.xz 0" >> /etc/setup/installed.db
/bin/busybox.exe grep -hE '\.dll$|\.so$' "/etc/setup/ansible-2.8.4-1.tar.xz.lst" >> /var/apt/cache/rebase.lst
/bin/busybox.exe grep -hE '\.exe$|\.dll$|\.so$' "/etc/setup/ansible-2.8.4-1.tar.xz.lst" >> /var/apt/cache/extractdeps.lst
/bin/busybox.exe gzip "/etc/setup/ansible-2.8.4-1.tar.xz.lst"
