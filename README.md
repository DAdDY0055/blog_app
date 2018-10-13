Takuya's Blogs
====

Overview
Railsシリーズ課題　Blog機能作成/Bootstrap課題/ログイン機能作成用リポジトリ

・つぶやきの投稿/投稿内容確認/編集/一覧表示/削除機能があるアプリケーション。
・投稿/投稿内容確認/編集/削除機能は事前にユーザ登録の上ログインしないと実行できない。
・ログイン機能はRailsのGemを利用せずに作成

## Description

・1文字以上140文字以下で自由につぶやくことが可能。  
・140文字より多い文字数、または内容が空で登録した場合エラーメッセージが表示される。  
・確認画面から投稿画面に戻った際も、打ち込んだ内容は保持される。
・ログインせずに投稿/投稿内容確認/編集/削除を行おうとした場合、強制的にログインページに遷移される。

## Demo
Heroku　URL  
https://sleepy-caverns-58382.herokuapp.com/

## Dependency
・ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-linux]  
・Rails 5.1.6  
・psql (PostgreSQL) 9.3.18  
・jQuery version 3.3.1  
・bootstrap version 3.3.7  

