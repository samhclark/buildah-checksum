FROM scratch
ADD --checksum=sha256:b9f30418d8250cac56c2eb6d6fe56f80d316b9996a041df162095f45920dede7 \
    https://github.com/containers/buildah/archive/refs/tags/v1.37.1.tar.gz \
    buildah-1.37.1.tar.gz