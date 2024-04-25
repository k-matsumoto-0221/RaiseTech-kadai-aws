## 1. AWSアカウントの作成
![AWSアカウントの作成](./img/capture01.png)

## 2. IAMの推奨設定
- **rootユーザ**をMFAで保護
![rootユーザをMFAで保護](./img/capture02.png)
---
- **AdministratorAccess**権限の**IAMユーザー**を作成
  - 作成したIAMユーザ
  ![作成したIAMユーザ](./img/capture03.png)
  - AdministratorAccess権限を付与
  ![AdministratorAccess権限を付与](./img/capture04.png)
---
- **Billing**を**IAMユーザ**で閲覧出来るように
  - AWSBillingReadOnlyAccess権限を付与
  ![AWSBillingReadOnlyAccess権限を付与](./img/capture04.png)
  - Billing and Cost Managementコンソール画面を表示
  ![Billing and Cost Managementコンソール画面を表示](./img/capture05.png)

## 3. Cloud9の作成
- **Amazon Linux 2**で作成
![Cloud9をAmazon Linux 2で作成](./img/capture06.png)

- コンソール画面に**HellWorld**を出力
![コンソール画面にHellWorldを出力](./img/capture07.png)
