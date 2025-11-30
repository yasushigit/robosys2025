#!/bin/bash
# SPDX-FileCopyrightText: 2025 Yasushi Ando
# SPDX-License-Identifier: GPL-3.0-only

ng() {
    echo "${1}行目が違うよ: ${2}"
    res=1
}

res=0

#テスト1: 単一行
out=$(echo "hello world" | ./plus)
[ "$out" = "lines:1 words:2 chars:11" ] || ng "$LINENO" "期待: lines:1 words:2 chars:11, 出力: $out"

#テスト2: 改行あり
out=$(echo -e "hello world\n" | ./plus)
[ "$out" = "lines:1 words:2 chars:12" ] || ng "$LINENO" "期待: lines:1 words:2 chars:12, 出力: $out"

#テスト3: 複数行
out=$(echo -e "a b c\n1 2 3\nx y" | ./plus)
[ "$out" = "lines:3 words:8 chars:13" ] || ng "$LINENO" "期待: lines:3 words:8 chars:13, 出力: $out"

#テスト4: 空文字
out=$(echo -n "" | ./plus)
[ "$out" = "lines:0 words:0 chars:0" ] || ng "$LINENO" "期待: lines:0 words:0 chars:0, 出力: $out"

#テスト5: 改行だけ
out=$(echo -e "\n\n" | ./plus)
[ "$out" = "lines:2 words:0 chars:2" ] || ng "$LINENO" "期待: lines:2 words:0 chars:2, 出力: $out"

#結果表示
[ "$res" = 0 ] && echo "OK"
exit $res
