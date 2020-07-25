#!/bin/sh
set -e
ORIGIN="http://127.0.0.1:8080"
# x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}
curl -fsSL -o test.gif "${ORIGIN}/cgi-bin/mimetex.cgi?x%3D%5Cfrac%7B-b%5Cpm%5Csqrt%7Bb%5E2-4ac%7D%7D%7B2a%7D"
cmp -s quadratic.gif test.gif
