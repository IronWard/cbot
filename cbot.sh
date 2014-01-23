#!/bin/bash

# directory where this script is
BOTDIR=$(dirname $0)
# directory of core components
COREDIR="$BOTDIR/core"
# directory of event handler modules
MODDIR="$BOTDIR/modules"
# directory of plugins
PLUGINDIR="$BOTDIR/plugins"
# directory of transport modules
TRANDIR="$BOTDIR/transport"
# path to the configuration file
CONFIG="$BOTDIR/cbot.cfg"
DATADIR="$BOTDIR/data"
# return code
RC=0

# load the cbot core
source "$COREDIR/cbot"

# setup the bot
cbot.setup

# run the bot
cbot.run

# cleanup the bot
cbot.cleanup

# exit
exit $RC

