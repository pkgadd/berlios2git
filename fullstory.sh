#!/bin/sh -e
# Copyright 2024 Stefan Lippers-Hollmann <s.l-h@gmx.de>
# License: ISC

REPOSITORIES="$(gh repo list -L 10000 fullstory | sort | awk -F '[/\t]' '/^fullstory/{print $2}')"

# write out mrconfig
for i in $REPOSITORIES; do
	printf "[vcs/fullstory/${i}]\ncheckout = git clone git@github.com:/fullstory/${i}.git ${i}\n\n"
done >fullstory.mrconfig

# write out RSS file
for i in $REPOSITORIES; do
	printf "https://github.com/fullstory/${i}/commits/master.atom\n"
done >fullstory.rss

# rss2email snippet
for i in $REPOSITORIES; do
	printf "[feed.fullstory_${i}]\nurl = https://github.com/fullstory/${i}/commits/master.atom\n\n"
done >fullstory.rss2email
