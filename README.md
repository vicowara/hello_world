# Hello, World!

## なにこれ
Hello, World!する実行バイナリをアセンブラ(GAS)を介してコピーする

## 動作対象
Linux(x86\_64のみ)  

## ファイルの説明
* hello.s
  * Hello, World! without libc
* dump.sh
  * Hello, World!するバイナリをコピるアセンブリ(dump.s)を生成するスクリプト

## 生成されるファイル
* hello
  * hello.sをアセンブルして出来た実行バイナリ
* dump.s
  * helloをそのまま.byteディレクティブで書き換えたやつ
* dump
  * dump.sをアセンブルして出来た実行バイナリ(helloと同じものが作られる)

## 何が嬉しいの
同様の手段を使えばアセンブリで画像だろうが音声だろうが生成できて楽しい(バイナリエディタがあれば何でも作れる理論)  
なお中間生成される.sファイルのサイズは元ファイルの11倍になります

## 遊び方例
```
$ dump.sh input.png output.s
$ as output.s -o output.elf
$ objcopy -O binary output.elf output.png
```

## 何が楽しいの
うるせえバイナリの息吹を感じろ
