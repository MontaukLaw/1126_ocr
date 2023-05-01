## build

modify `GCC_COMPILER` on `build.sh` for target platform, then execute

```
rm ./build/* -rf
cd build
cmake ..
make
```

## install

connect device and push build output into `/`

```
adb push install/rknn_ocr /
```

## run

```
adb shell
cd /rknn_ocr/
./rknn_ocr /app/0429/model/det_new.rknn /app/0429/model/repvgg_s.rknn /app/0429/model/dict_text.txt /app/0429/model/1.png
adb shell /app/0429/rknn_ocr /app/0429/model/det_new.rknn /app/0429/model/repvgg_s.rknn /app/0429/model/dict_text.txt /app/0429/model/1.png

```
