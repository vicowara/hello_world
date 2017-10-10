# Hello, World!

## なにこれ
Hello, World!する実行バイナリをアセンブラ(GAS)を介してコピーする

## ファイルの説明
* hello.s
  * Hello, World! without libc
* dump.sh
  * Hello, World!するバイナリをコピるアセンブリを生成するスクリプト

## 生成されるファイル
* hello
  * 実行バイナリ
* dump.s
  * helloをそのまま.byteディレクティブで書き換えたやつ
* dump
  * dump.sをアセンブルしたファイル(helloと同じものが作られる)

## 何が嬉しいの
同様の手段を使えばアセンブリで画像だろうが音声だろうが生成できて楽しい(バイナリエディタがあれば何でも作れる理論)

## 動作対象
Linux(x86\_64のみ)
