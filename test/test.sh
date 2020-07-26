#!/bin/sh
set -e
ORIGIN="http://sut"
# x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}
curl -fsSL -o /tmp/test.gif "${ORIGIN}/cgi-bin/mimetex.cgi?x%3D%5Cfrac%7B-b%5Cpm%5Csqrt%7Bb%5E2-4ac%7D%7D%7B2a%7D"
cmp -s quadratic.gif /tmp/test.gif
