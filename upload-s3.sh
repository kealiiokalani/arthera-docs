#!/bin/bash

aws s3 rm s3://docs.arthera.net --recursive
aws s3 cp build/ s3://docs.arthera.net --recursive
aws cloudfront create-invalidation --distribution-id E281LOPT7QBU --paths "/*"
exit
