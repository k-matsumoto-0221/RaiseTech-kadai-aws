## 0. 目的
- CloudFormation を利用して、手動で作成していたリソースを自動で作成してみる
- ゴールとしては、以下の 3 点を目指す
  - アプリケーションが正常に動作している状態を確認でき、ALB 越しにアクセスができる
  - 画像の保存先が S3 になっている
  - ALBのアラームを設定して、ヘルスチェックの OK と NG の両パターンのメールが受信できる

## 1. 環境構成図
![環境構成図](./img/drawio/EnvConfDiagram.drawio.png)

## 2. 環境構築
- CloudFormation にて、リソースを作成する
  - 構築した手順は [こちら](./procedure/cloudformation.md) に記載

  - 作成したスタック
    - スタック名
      - network
      - security
      - application
    - YAML テンプレート
      - [NetWorkLayer.yml](./cfn/NetworkLayer.yml)
      - [SecurityLayer.yml](./cfn/SecurityLayer.yml)
      - [ApplicationLayer.yml](./cfn/ApplicationLayer.yml)
  - AWS CLI にてリソースの作成結果を確認する
    - 実行するコマンド
      ```bash:title
      $ aws cloudformation describe-stacks --stack-name ${Stack-Name} --query 'Stacks[0].[StackStatus, CreationTime]' --output table
      $ aws cloudformation describe-stack-resources --stack-name ${Stack-Name} --query 'StackResources[*].[LogicalResourceId, ResourceType, ResourceStatus]' --output table
      ```
    - ログ
      - [ConstWork_20240622.log](./log/ConstWork_20240621.log)
- リソースが作成された後は、アプリケーションが動作するように各種パッケージのインストールやファイルの修正を行う
  - 今回は事前準備として、必要なパッケージが導入済みのAMIを使用している

## 3. ALB 越しにアプリケーションにアクセス
- 画像1
![capture01](./img/capture01.png)
- 画像2
![capture02](./img/capture02.png)

## 4. 画像の保存先が S3 になっていることを確認
- 保存
  - 画像1
  ![capture03](./img/capture03.png)
  - 画像2
  ![capture04](./img/capture04.png)
  - 画像3
  ![capture05](./img/capture05.png)
- 削除
  - 画像1
  ![capture06](./img/capture06.png)
  - 画像2
  ![capture07](./img/capture07.png)

## 5. OKと NG の両パターンのメールを受信
- OKの場合
  - 画像1
  ![capture08](./img/capture08.png)
  - 画像2
  ![capture09](./img/capture09.png)
- NGの場合
  - 画像1
  ![capture10](./img/capture10.png)
  - 画像2
  ![capture11](./img/capture11.png)
