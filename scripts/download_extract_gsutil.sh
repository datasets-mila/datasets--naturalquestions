#!/bin/bash

# this script is meant to be used with 'datalad run'

for file_url in "https://storage.googleapis.com/pub/gsutil.tar.gz bin/gsutil.tar.gz"
do
        echo ${file_url} | git-annex addurl -c annex.largefiles=anything --raw --batch --with-files
done

tar -C bin/ -xzf bin/gsutil.tar.gz
mv bin/gsutil/ bin/gsutil_build/

(cd bin/; ln -sf gsutil_build/gsutil gsutil)
