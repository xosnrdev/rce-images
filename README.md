# rce-images

[![Deprecated](https://img.shields.io/badge/status-deprecated-red)](https://github.com/ToolKitHub/rce-runner)

> [!IMPORTANT]
> This repo is deprecated and has been moved to [https://github.com/ToolKitHub/rce-images](https://github.com/ToolKitHub/rce-images)

## Overview

This are runtime docker images used by [cexaengine.com](https://cexaengine.com) to run user code.
The images are built using nix which are pinned to a specific nixpkgs commit to create reproducible images.
See the [overview](https://github.com/xosnrdev/carai) on how everything is connected.

### RCE Runner

The [rce-runner](https://github.com/xosnrdev/rce-runner) is installed in each image which writes the files inside the container, compiles and runs the code and returns the result as a json payload.

### Images

Prebuilt images can be found on [Docker Hub](https://hub.docker.com/u/toolkithub).

## Example

```bash
echo '{
  "language": "javascript",
  "files": [{
    "name": "main.js",
    "content": "console.log(\"Hello World!\");"
  }]
}' | docker run --rm -i --read-only --tmpfs /tmp:rw,noexec,nosuid,size=65536k --tmpfs /home/rce:rw,exec,nosuid,uid=1000,gid=1000,size=131072k -u rce -w /home/rce rce/javascript:latest
```

### Result

```json
{ "stdout": "Hello World!\n", "stderr": "", "error": "" }
```
