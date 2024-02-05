# Next.js + MeiliSearch Curator 開発環境用docker

## 前提

- Docker（Desktop）がインストールされていること
- docker-composeがインストールされていること
- gitがインストールされていること

## 環境構築

1. 任意のディレクトリに本リポジトリをクローンする
2. クローンしたディレクトリ（curation-dev-environment）に移動する
3. .env.exampleをコピーして.envにリネームする
4. 必要に応じて.envの値を設定する（MEILI_MASTER_KEYは変更推奨）
5. 下記コマンドでウェブアプリのリポジトリをworkspaceディレクトリにクローンする
    ```
    git clone https://github.com/joyrswd/curation.git ./workspace
    ```
6. 下記コマンドでdockerを立ち上げる
    ```
    docker-compose up -d
    ```
7. 下記コマンドでappコンテナの中に入る
    ```
    docker-compose exec app bash
    ```
8. https://github.com/joyrswd/curation のインストール手順4以降を実施する  

以上

## コンテナ構成
- **app** -- ウェブサーバーとバッチ処理（Node.js）を実行するコンテナ  
    ※ ウェブサーバー起動後にブラウザで http://localhost:3000/ へアクセスして閲覧  
    ※ コンテナ内の.envはこのリポジトリの.envを参照している
- **meilisearch** -- データベースを実行するコンテナ  
    ※ http://localhost:7700/ へアクセスしてDBの内容確認が可能  
    ※ パスワードは.envのMEILI_MASTER_KEYを参照

## ライセンス

このプロジェクトは[MITライセンス](LICENSE)の下でライセンスされています。

