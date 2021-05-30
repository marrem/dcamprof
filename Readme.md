# DCamProf container image

This project contains a Dockerfile to build a container image that runs dcamprof.


It uses Debian:10-slim base image and build the source obtained from:

https://github.com/Beep6581/dcamprof

More specifically it downloads:

https://github.com/Beep6581/dcamprof/archive/refs/heads/master.zip



## Build

```
docker build -t dcamprof .
```

## Use

E.g. create test chart

```
docker run dcamprof make-testchart test.ti1
docker ps -a # find out container hash / name
docker cp <container name or hash>:/test.ti1 .
```

