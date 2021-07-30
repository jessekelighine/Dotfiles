---
title:  "ffmeg notes"
author: "jessekelighine@gmail.com"
date:   "2021-Jul-25"
---

# fade-out music

```sh
ffmpeg -i test.mp3 -af "afade=t=out:st=197:d=3" out.mp3
```

# cut the file into 15 minute segments

```sh
ffmpeg -i input.mov -c copy -map 0 -segment_time 00:15:00 -f segment -reset_timestamps 1 teil%02d.mov
```
