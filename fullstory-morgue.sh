#!/bin/sh -e
# Copyright 2024 Stefan Lippers-Hollmann <s.l-h@gmx.de>
# License: ISC

REPOSITORIES="$(gh repo list -L 10000 fullstory-morgue | sort | awk -F '[/\t]' '/^fullstory-morgue/{print $2}')"

# write out mrconfig
for i in $REPOSITORIES; do
	printf "[vcs/morgue-fullstory/${i}]\ncheckout = git clone git@github.com:/fullstory-morgue/${i}.git ${i}\nskip = [ ! -d \"\${HOME}/vcs/morgue-fullstory\" ]\n\n"
done >fullstory-morgue.mrconfig

# write out RSS file
for i in $REPOSITORIES; do
	printf "https://github.com/fullstory-morgue/${i}/commits/master.atom\n"
done >fullstory-morgue.rss

# rss2email snippet
for i in $REPOSITORIES; do
	printf "[feed.fullstory-morgue_${i}]\nurl = https://github.com/fullstory-morgue/${i}/commits/master.atom\n\n"
done >fullstory-morgue.rss2email
