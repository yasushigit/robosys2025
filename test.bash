#!/bin/bash
# SPDX-FileCopyrightText: 2025 Yasushi Ando
# SPDX-License-Identifier: GPL-3.0-only

ng() {
    echo "Test failed at line $1"
    echo "  Expected: '$expected'"
    echo "  Actual:   '$out'"
    res=1
}

res=0

# テストケース1: 普通のテキスト (Hello World + 改行)
expected="lines:1 words:2 chars:12"
out=$(echo "Hello World" | ./plus)
[ "$out" = "$expected" ] || ng "$LINENO"

# テストケース2: 空文字
expected="lines:0 words:0 chars:0"
out=$(echo -n "" | ./plus)
[ "$out" = "$expected" ] || ng "$LINENO"

# テストケース3: 改行なしのテキスト
expected="lines:1 words:1 chars:3"
out=$(printf "foo" | ./plus)
[ "$out" = "$expected" ] || ng "$LINENO"

# 結果判定
if [ "$res" = 0 ]; then
    echo "OK"
    exit 0
else
    echo "Failed"
    exit 1
if