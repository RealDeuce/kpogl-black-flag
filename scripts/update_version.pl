#!/bin/sh

VERSTR=$1
NUMERIC=${VERSTR##v}

perl -pi -e "s/^(\s+\"version\"[ \t\r\n]*:[ \t\r\n]*\")[0-9.]+(\",)\$/\$1.'${NUMERIC}'.\$2/ge" module.json
perl -pi -e "s/^(\s+\"download\"[ \t\r\n]*:[ \t\r\n]*\".*)v[0-9.]+(\\/koboldpressogl.zip\",)\$/\$1.'${VERSTR}'.\$2/ge" module.json
