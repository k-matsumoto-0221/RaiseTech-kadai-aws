## 手順
### 1. AWSコンソール上で必要なリソースを作成
- 以下のリソース作成手順は省略とする
  - VPC
  - EC2
  - RDS
  - セキュリティグループ

### 2. 各種パッケージをインストール
- EC2
  - その他
    - MySQL クライアントも一緒に
    ```bash:title
    $ sudo yum -y update
    $ sudo yum -y install gcc-c++ make patch git curl zlib-devel openssl-devel ImageMagick-devel readline-devel libcurl-devel libffi-devel libicu-devel libxml2-devel libxslt-devel mysql mysql-devel
    ```

  -  Ruby
      ```bash:title
      $ command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
      $ command curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -
      $ curl -L get.rvm.io | bash -s stable
      $ source ~/.bashrc
      $ source ~/.rvm/scripts/rvm
      $ rvm get head
      $ rvm install 3.1.2
      $ rvm --default use 3.1.2
      $ echo source ~/.rvm/scripts/rvm >> ~/.bashrc
      $ ruby -v
      ```

  - Bundler
    ```bash:title
    $ gem install bundler -v 2.3.14
    $ bundler -v
    ```

  - Node
    ```bash:title
    $ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
    $ source ~/.nvm/nvm.sh
    $ nvm install v17.9.1
    $ node -v
    ```

  - yarn
    ```bash:title
    $ npm install -g yarn
    $ yarn set version 1.22.19
    $ yarn -v
    ```

### 3. サンプルアプリケーションをクローン
- EC2
  ```bash:title
  $ sudo mkdir /var/www
  $ sudo chown ec2-user /var/www/
  $ cd /var/www
  $ git clone -b feature/create_chat_function https://github.com/yuta-ushijima/raisetech-live8-sample-app.git
  ```

### 4. DB の設定/接続確認
- EC2
  - **config ファイル**を作成
    ```bash:title
    $ cd /var/www/raisetech-live8-sample-app/
    $ cp -p ./config/database.yml.sample ./config/database.yml
    ```
  - サンプルを参考に **configファイル** を修正
    - [database.yml](./conf/database.yml)

  - DB 接続確認
    ```bash:title
    $ mysql -h DBエンドポイント -u admin -p
    ```

### 5. 環境構築
- EC2
  ```bash:title
  $ bin/setup
  ```

### 6. アプリケーションを起動
- EC2
  - 以下のコマンドを実行
    ```bash:title
    $ sudo chmod 755 bin/dev
    $ bin/dev
    ```
  - アプリケーションを停止させる場合
    - コンソール上で **ctrl + c**

###  7. アプリケーションにアクセス
- ブラウザに **http://EC2グローバルIP:80** を入力
  - 画像1
  ![capture01](./img/capture01.png)
