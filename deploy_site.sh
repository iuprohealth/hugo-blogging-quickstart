#!/usr/bin/env bash
# Copyright 2022 Alexander L. Hayes
# MIT License (https://opensource.org/licenses/MIT)


# Put your IU username after the `=` sign here:
USER=


if [[ -z $USER ]]; then
  echo -e "USER not set.\n\nEdit the deploy_site.sh script to set your IU username."
  exit 1
fi


# Build a copy of the blog
./hugo -d blog


# Deploy with rsync

if command -v rsync; then

  echo -e "Found rsync, deploying."

  rsync -av --delete blog/ "${USER}@silo.luddy.indiana.edu:/u/${USER}/cgi-pub/blog/"

else

  echo -e "\n    rsync not found."
  echo -e "    Alexander strongly recommends rsync. 'scp' sometimes results in permission errors on the server.\n"

  # scp -r blog/ "${USER}@silo.luddy.indiana.edu:/u/${USER}/cgi-pub/blog/"
fi
