#!/bin/bash


echo "Find GRUB installation location: "

sudo fdisk -l 2>/dev/null | egrep "Disk /|/dev/" | sed "s#^/dev/#Part /dev/#" | awk '{print $2}' | sed 's/://' | xargs -n1 -IX sudo sh -c "hexdump -v -s 0x80 -n  2 -e '2/1 \"%x\" \"\\n\"' X | xargs -n1 -IY sh -c \"case  \"Y\" in '48b4') echo X: GRUB 2 v1.96 ;; 'aa75' | '5272') echo X: GRUB Legacy ;; '7c3c') echo X: GRUB 2 v1.97 oder v1.98 ;; '020') echo X: GRUB 2 v1.99 ;; *) echo X: No GRUB installation found Y ;; esac\""
