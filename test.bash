#!/bin/bash
# SPDX-FileCopyrightText: 2025 Yasushi Ando
# SPDX-License-Identifier: GPL-3.0-only

ng () {
      echo NG at Line $1
      res=1
}

res=0

# テストケース1: 普通に
out=$(seq 5 | ./plus)
[ "${out}" = "15.0
55.0
15.0
55.0" ] || ng ${LINENO} "Invalid output"

# テストケース2: あって入れてみる
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

# テストケース3: 空文字送ってみる
out=$(ech | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res