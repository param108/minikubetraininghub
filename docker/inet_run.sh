#!/bin/bash
service openbsd-inetd restart

/bin/bash -c "while [ \"a\" = \"a\" ]; do echo \"Hi\"; sleep 10; done"
