# Summary

This image enables you to inject custom CA-Certificates into your jenkins instance.
Just mount any Certificates into /usr/local/share/ca-certificates

After creation the init script will update the local trust store.

Additionally this image provides the following binaries to be shipped with it:

| Name | Installation Path |
|------|-------------------|
|docker-compose|/usr/local/bin/docker-compose|