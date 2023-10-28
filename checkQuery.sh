# !/bin/bash
# psqlコマンドでアクセスしてファイルを出力するサンプル

# 接続情報
USER=””
HOST=""
PASSWORD=""

#  psql実行時にパスワードを聞かれないようにする
export PGPASSWORD=postgres

# ファイルを読み込んで実行
psql -U postgres -d postgres -h localhost -f select.sql -o output.csv
exit $?