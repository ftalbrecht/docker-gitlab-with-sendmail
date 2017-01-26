#!/bin/bash
sed -i 's;source /RELEASE;sh /assets/start-sendmail.sh\n\nsource /RELEASE;' /assets/wrapper

