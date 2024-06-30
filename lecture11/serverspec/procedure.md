## 手順
### 1. serverspec をインストール
```bash:title
$ gem install serverspec
```

### 2. 環境構築
- 作業用ディレクトリ作成 & 移動
  ```bash:title
  $ mkdir /var/www/raisetech-live8-sample-app/serverspec
  $ cd /var/www/raisetech-live8-sample-app/serverspec
  ```
- 初期設定
  ```bash:title
  $ serverspec-init

  Select OS type:

  1) UN*X
  2) Windows       

  Select number:          # 1 を入力

  Select a backend type:

    1) SSH
    2) Exec (local)

  Select number:          # 2 を入力

    + spec/
    + spec/localhost/
    + spec/localhost/sample_spec.rb
    + spec/spec_helper.rb
    + Rakefile
    + .rspec
  ```
- 作業用ディレクトリの配下にファイルが作成される
  ```bash:title
  ├─ spec
  │  ├─ localhost
  │  │  └─ sample_spec.rb
  │  └─ spec_helper.rb
  ├─ Rakefile
  └─ .rspec
  ```

### 3. テストコード配置
- あらかじめ作成しておいた [テストコード](./lecture11_spec.rb) を対象ファイルに記載
  - 対象ファイル
    ```bash:title
    $ (省略) /serverspec/spec/localhost/sample_spec.rb
    ```

### 4. テスト実行
```bash:title
$ rake spec
```
