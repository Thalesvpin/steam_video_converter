set currDir=%cd%
set /p dir="Enter the desired directory: "
pushd %dir%
type init-stream0.m4s chunk-stream0-*.m4s > "%currDir%\tmp_video.mp4"
type init-stream1.m4s chunk-stream1-*.m4s > "%currDir%\tmp_audio.mp4"
pause

popd
ffmpeg -i tmp_video.mp4 -i tmp_audio.mp4 -c copy video.mp4
del tmp_*.mp4
pause