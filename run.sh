#!/bin/sh
set -eu

chown -R ${NEXUS_USER}:${NEXUS_USER} ${NEXUS_HOME} ${NEXUS_DATA}
exec su-exec ${NEXUS_USER}:${NEXUS_USER} /sbin/tini -- bin/nexus run
