# MODELS
## about_us
name.string
role.string
description.text

## artists
name.string
baseline.string
description.text

## events
name.string
description.text
date.datetime
best.boolean

## socials
*about_us.references*
*artists.references*
*events.references*
label.string
link.string

## tags
name.string

## events_tags
*event.references*
*tag.references*

# UPLOADER
## about_us
IMAGE

## artists_uploader
IMAGE
