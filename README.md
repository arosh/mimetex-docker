# mimetex-docker

[![Docker Repository on Quay](https://quay.io/repository/arosh/mimetex/status "Docker Repository on Quay")](https://quay.io/repository/arosh/mimetex)

This is a container image which serves [mimetex.cgi](http://www.forkosh.com/mimetex.html).

## How to use

```shell
docker run --rm --name mimetex -p 8080:80 quay.io/arosh/mimetex
```

You can obtain a GIF image which represents an expression in a query by sending a request such as `curl 127.0.0.1:8080/cgi-bin/mimitex.cgi?y=\sqrt{x}`.
