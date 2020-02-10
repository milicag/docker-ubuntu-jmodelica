#!/bin/bash
#################################################
# Shell script that simulates a Modelica model
# using OCT.
#################################################
set -e

# Export the MODELICAPATH
if [ -z ${MODELICAPATH+x} ]; then
    MODELICAPATH=`pwd`
else
    # Add the current directory to the front of the Modelica path.
    MODELICAPATH=`pwd`:${MODELICAPATH}
fi
export MODELICAPATH=$MODELICAPATH:/opt/oct/ThirdParty/MSL
/opt/oct/bin/jm_ipython.sh $@
exit $?
