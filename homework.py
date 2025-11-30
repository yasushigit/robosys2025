#!/usr/bin/python3
# SPDX-FileCopyrightText: 2025 Yasushi Ando　　　　　
# SPDX-License-Identifier: BSD-3-Clause
import sys

def main():
    text = sys.stdin.read()
    lines = text.count("\n") + (1 if text and not text.endswith("\n") else 0)
    words = len(text.split())
    chars = len(text)

    print(f"lines:{lines} words:{words} chars:{chars}")

if __name__ == "__main__":
    main()
