# Bootstrap file
The bootstrap file contains dependencies needed to run a clojure program.
The dependencies are normally downloaded the first time you run a clojure program,
but that does not work inside a container without network access.
The file is unpacked into to the work dir by the rce-runner.

###  Steps to make bootstrap.tar.gz
```
* docker run --tmpfs /tmp:rw,noexec,nosuid,size=65536k --tmpfs /home/rce:rw,exec,nosuid,uid=1000,gid=1000,size=131072k -u rce --rm -t -i rce/clojure:latest /bin/bash
* cd /home/rce
* rm -rf .m2
* echo '(println 42)' | clj

# Outside container: 
* docker exec <containerId> tar -C /home/rce -cf - .m2 | gzip > bootstrap.tar.gz
```
