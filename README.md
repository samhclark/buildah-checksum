# buildah-checksum

The `ADD` command in a containerfile has been supported since v1.33.0 https://buildah.io/releases/2023/11/17/Buildah-version-v1.33.0.html 

GitHub's Ubuntu 24.04 runner has v1.33.7 https://github.com/actions/runner-images/blob/main/images/ubuntu/Ubuntu2404-Readme.md#tools

This still fails with the error:

```
STEP 2/2: ADD --checksum=sha256:b9f30418d8250cac56c2eb6d6fe56f80d316b9996a041df162095f45920dede7     https://github.com/containers/buildah/archive/refs/tags/v1.37.1.tar.gz     buildah-1.37.1.tar.gz
Error: building at STEP "ADD --checksum=sha256:b9f30418d8250cac56c2eb6d6fe56f80d316b9996a041df162095f45920dede7 https://github.com/containers/buildah/archive/refs/tags/v1.37.1.tar.gz buildah-1.37.1.tar.gz": ADD only supports the --chmod=<permissions> and the --chown=<uid:gid> flag
Error: Error: buildah exited with code 125
Error: building at STEP "ADD --checksum=sha256:b9f30418d8250cac56c2eb6d6fe56f80d316b9996a041df162095f45920dede7 https://github.com/containers/buildah/archive/refs/tags/v1.37.1.tar.gz buildah-1.37.1.tar.gz": ADD only supports the --chmod=<permissions> and the --chown=<uid:gid> flag
```

The workflow logs show that it's using buildah 1.33.7

```
Run redhat-actions/buildah-build@v2
  with:
    containerfiles: ./Containerfile
  
    image: myimage
    tags: a08bddf42d4763a8ddb155a858378009a09aaed8
    context: .
    oci: false
    tls-verify: true
/usr/bin/buildah version
  /usr/bin/buildah version
  Version:         1.33.7
  Go Version:      go1.22.2
  Image Spec:      1.1.0-rc.5
  Runtime Spec:    1.1.0
  CNI Spec:        1.0.0
  libcni Version:  
  image Version:   5.29.2
  Git Commit:      
  Built:           Thu Jan  1 00:00:00 1970
  OS/Arch:         linux/amd64
  BuildPlatform:   linux/amd64
  ```
  