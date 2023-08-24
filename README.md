# README

## 概要

Rails で GraphQL を使用してみた

参考サイト
https://zenn.dev/igaiga/books/rails-practice-note/viewer/rails_graphql_workshop#gemfile

## クエリ実行方法

1. サーバー起動する
   `rails s`

2. graphiql にアクセスする
   http://localhost:3000/graphiql

3. 画面でクエリを入力して実行する

- ID 指定で User を取得

```graphql
{
  user(id: "1") {
    id
    name
    email
  }
}
```

- User をすべて取得する

```graphql
{
  users {
    id
    name
    email
  }
}
```
