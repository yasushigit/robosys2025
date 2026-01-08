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


[ "$res" = 0 ] && echo OK
exit $res