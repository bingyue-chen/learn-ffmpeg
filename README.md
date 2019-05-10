# Learn FFMPEG  

## Ref link
- [Mac Download Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/macOS)
- [Document](https://www.ffmpeg.org/ffmpeg.html)
- [Understanding Rate Control Modes](https://slhck.info/video/2017/03/01/rate-control.html)
- [X264設定](https://www.nmm-hd.org/d/index.php?title=X264設定)
- [10bit](https://ffmpeg.zeranoe.com/forum/viewtopic.php?t=5475)

## Usage

| flag/parameter | meaning |
|----------------|---------|
| pass           | set pass number |
| v              | video |
| a              | audio |
| -an            | no auido |
| -vf            | filter video; -filter:v |
| -c             | set codec |
| -c:a           | set audio codec |
| -c:v           | set video codec |
| copy           | one of codec - copy source |
| -b             | bitrate |
| -vsync         | set video sync method |
| cfr            | frames will be duplicated and dropped to achieve exactly the requested constant frame rate |
| -r             | set frame rate |
| -ar            | set audio sampling frequency |
| -y             | overwrite output files without asking |
| -f             | force format |
| -crf           | constant rate factor (18 ~ 28) |
