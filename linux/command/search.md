# ファイルとディレクトリの検索

## 実行されるべきファイルやリンクへのパスを返す

```shell
which 

# python
which python
```

## ファイルやディレクトリを検索する

```shell
find

# ファイルを検索する

find -type f

# ディレクトリを検索する

find -type d

# ファイル名で検索する

find -name *.py

# ファイルサイズで検索する

find -size +100k

# ファイルの更新日時で検索する

find -newermt 2026-09-06

# 標準エラー出力を null deviceにリダイレクトし、見やすくする

find -newermt 2026-09-06 2>/dev/null
```

## ローカルデータベースを使用して検索

この方法だとfindよりも探すのが早くなるが、フィルタオプションは少ない

```shell
locate *.py
```
