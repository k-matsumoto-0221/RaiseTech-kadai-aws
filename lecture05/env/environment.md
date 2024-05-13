## 環境
- OS
  - Amazon Linux 2
- インスタンスタイプ
  - t2.micro
- ruby
  - 3.1.2
- Bundler
  - 2.3.14
- Rails
  - 7.0.4
- Node
  - v17.9.1
- yarn
  - 1.22.19
- DB エンジン
  - MySQL
- その他
  - [こちら](https://pikawaka.com/rails/ec2_deploy) を参考に以下をインストール
    - gcc-c++
    - make
    - patch
    - git
    - curl
    - zlib-devel
    - openssl-devel
    - ImageMagick-devel
    - readline-devel
    - libcurl-devel
    - libffi-devel
    - libyaml-devel
    - libicu-devel
    - libxml2-devel
    - libxslt-devel
- アプリケーション
  - [サンプルアプリケーション](https://github.com/yuta-ushijima/raisetech-live8-sample-app)
    - ブランチは **feature/create_chat_function** を使用

- 環境構築はターミナルで以下のコマンドを実行すること
  ```bash:title
  $ bin/setup
  ```
- rails サーバーの起動は以下のコマンドを実行すること
  - **組み込みサーバ** を使用する場合
    ```bash:title
    $ bin/dev
    ```

  - **Nginx, Unicorn** を使用する場合
    ```bash:title
    $ bundle exec unicorn_rails -c ./config/unicorn.rb -E development
    ```
