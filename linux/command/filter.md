# フィルター

## More

```shell
cat /etc/passwd | more
```

## Less

moreとは違って表示されていた出力がターミナルに残らない

```shell
cat /etc/passwd | less
```

## Head

```shell
cat /etc/passwd | head

# 行数指定
cat /etc/passwd | head -n 10
```

## Tail

```shell
cat /etc/passwd | tail

# 行数指定
cat /etc/passwd | tail -n 10
```

## Sort

```shell
cat /etc/passwd | sort

# 逆順
cat /etc/passwd | sort -r

# ユニーク
cat /etc/passwd | sort -u
```

## Grep

```shell
# マッチする行を表示
cat /etc/passwd | grep "false\|nologin"

# マッチしない行を表示
cat /etc/passwd | grep -v "false\|nologin"

# マッチした部分だけを表示
grep -o "" /etc/passwd
```

## Cut

特定のデリミタを削除し、行内の指定した位置にある単語を表示する。

```shell
# デリミタを指定してカット
cat /etc/passwd | grep -v "false\|nologin" | cut -d":" -f1
```

## Tr

行から特定の文字を、自分が定義した文字に置き換える。

最初のオプションには置き換えたい文字
2番目のオプションには置き換えたい文字を定義する。

```shell
# 文字を置換
cat /etc/passwd | grep -v "false\|nologin" | tr ":" " "
```

## Column

検索結果を表敬式で表示する

```shell
cat /etc/passwd | grep -v "false\|nologin" | tr ":" " " | column -t
```

## Awk

```shell
# フィールド区切り文字を指定してフィールドを表示
cat /etc/passwd | grep -v "false\|nologin" | awk -F":" '{print $1}'
```

## Sed

```shell
# 特定の文字列を置換
cat /etc/passwd | grep -v "false\|nologin" | sed 's/:/ /g'
```
