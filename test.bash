#!/bin/bash
#SPDX-FileCopyrightText: 2025 Yasushi Ando 　　　　　
#SPDX-License-Identifier: GPL-3.0-only

ng() {
	echo "${1}行目が違うよ"
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
