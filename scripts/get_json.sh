#!/bin/bash

curl https://www.planet.com/gallery/index.json 2>/dev/null | \
  jq -c '[ .galleryPosts[] | {title: .title, subtitle: .subtitle, image: .image} ]' > ./index.json
