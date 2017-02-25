#!/bin/bash
# <bitbar.title>Serposcope Status</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>KEN-G</bitbar.author>
# <bitbar.author.github>designplex</bitbar.author.github>
# <bitbar.desc>Serposcope Status and ON/OFF</bitbar.desc>
# <bitbar.image></bitbar.image>
# <bitbar.dependencies>bash</bitbar.dependencies>
# <bitbar.abouturl></bitbar.abouturl>

# Serposcope: Web search engine Rank Tracker https://serposcope.serphacker.com

# CONFIGURATION
APP_NAME=serposcope
PROCESS_NAME=serposcope
PROCESS_STATS_ON=serposcopeは稼働中
PROCESS_STATS_OFF=serposcopeは停止中
FONT_SIZE=14
FONT_COLOR_ALIVE=#71bbff
FONT_COLOR_DEAD=#ffffff
CMD_OPEN_DIR=/usr/bin/open
CMD_KILL_DIR=/usr/bin/pkill
CMD_DELAY_DIR=/bin/sleep


# Start
count=`ps -ef | grep $PROCESS_NAME | grep -v grep | wc -l`
    if [ $count = 0 ]; then
        # The process is dead
        echo "🅢| size=$FONT_SIZE color=$FONT_COLOR_DEAD"
        echo "---"
        echo "$PROCESS_STATS_OFF"
        echo "---"
        echo "💡Start $APP_NAME | bash=$CMD_OPEN_DIR param1=/Applications/serposcope.jar terminal=false refresh=true"
    else
        # The process is alive
        echo "🅢| size=$FONT_SIZE color=$FONT_COLOR_ALIVE"
        echo "---"
        echo "$PROCESS_STATS_ON"
        echo "---"
        echo "☑️Check Ranking | href=http://127.0.0.1:7134/"
        echo "---"
        echo "🚫Stop $APP_NAME | bash=$CMD_KILL_DIR param1=-KILL param2=-f param3=$PROCESS_NAME terminal=false refresh=true"
    fi
    echo ---
    echo "Information"
    echo "--WebSite | href=https://serposcope.serphacker.com/"
        echo "--changelog | href=https://github.com/serphacker/serposcope/blob/master/CHANGELOG.md"
        echo "--Forum/Support | href=https://forum.serphacker.com"
        echo "--Documentation"
            echo "----Install instructions and advanced configuration | href=https://serposcope.serphacker.com/en/doc/install.html"
            echo "----Quick start | href=https://serposcope.serphacker.com/en/doc/quick-start.html"
            echo "----Frequently Asked Question | href=https://serposcope.serphacker.com/en/doc/faq.html"
    echo "Refresh | color=#7d7d7d refresh=true"
