# plusコマンド
![test](https://github.com/yasushigit/robosys2025/actions/workflows/test.yml/badge.svg)

## 説明
- 標準入力からテキストを読み込み、行数・単語数・文字数を出力する
  - 行数: テキストに含まれる行の数
  - 単語数: 空白区切りによる単語の総数
  - 文字数: 全ての文字数

## インストール方法

```bash
$ git clone https://github.com/yasushigit/robosys2025.git
$ cd robosys2025
```

## 実行例

### 文字列を入力する場合

**入力:**
```bash
$ echo "Hello World" | ./plus
```

**出力:**
```text
lines:1 words:2 chars:12
```

### コマンドの出力を入力する場合

**入力:**
```bash
$ seq 5 | ./plus
```

**出力:**
```text
lines:5 words:5 chars:10
```

## 必要なソフトウェア
- Python
  - テスト済み: 3.7〜3.10

## テスト環境
- Ubuntu 24.04

## 謝辞
本プログラムコードは、千葉工業大学の上田隆一先生が公開されている講義資料およびサンプルコードを参考にし、同大学未来ロボティクス学科4年の落合亮輔さんに助言をいただきながら作成いたしました。 この場を借りて感謝申し上げます。

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，Ryuichi Ueda由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 Yasushi Ando