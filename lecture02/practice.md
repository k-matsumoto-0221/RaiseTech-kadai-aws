## 1. GitHub のアカウント作成<br>2. Git の初期設定
- 省略

## 3. GitHub 個人アクセストークンの作成
- 手順
    1. [Settings](https://github.com/settings/apps)
    から**Fine-grained personal tokens**をクリック
    2. **Generate new token**をクリック
    3. 各パラメータを入力
        - \* が必須パラメータ
        - All repositories を選択すること
    4. **Generate token** をクリック
    ![capture01](./img/practice/capture01.png)

## 4. GitHub のリポジトリ作成
- sample を作成
- **add a README file** にチェックを入れること
- public/private のどちらもでも良い
![capture02](./img/practice/capture02.png)

## 5. GitHub リポジトリのクローン
1. ローカルPC へクローン
    ```bash:title
    % git clone https:// 省略
    ```
2. sample に cd してクローンできているか確認
![capture03](./img/practice/capture03.png)

## 6. 作業用ブランチの作成と現在ブランチの切替（checkout）
- ブランチ作成/移動
    ```bash:title
    % git checkout -b git-lecture
    ```
- ブランチが作成されているか確認
    ```bash:title
    % git branch
    ```
    ![capture04](./img/practice/capture04.png)

## 7. ファイルの作成・変更
- **git-lecture.md** の名前で Markdown ファイルを作成

## 8. ファイルのステージング(add)
- **git-lecture.md** をステージング
    ```bash:title
    % git add git-lecture.md
    ```
- ステージングされているか確認
    ```bash:title
    % git status
    ```
    ![capture05](./img/practice/capture05.png)

## 9. ファイルのコミット
- **git-lecture.md** をコミット
    - コミットメッセージについては指定されたものを使用
    ```bash:title
    % git commit -m "add git-lecture.md"
    ```
- コミットされたか確認
    ```bash:title
    % git status
    ```
    ![capture06](./img/practice/capture06.png)

## 10. ステージング情報のプッシュ
- **git-lecture.md** をリモートリポジトリ（GitHub）へプッシュ
    ```bash:title
    % git push origin git-lecture
    ```
    ![capture07](./img/practice/capture07.png)
- リモートリポジトリを確認
![capture08](./img/practice/capture08.png)

## 11. プルリクエスト（PR）
- プルリクエストを作成
![capture09](./img/practice/capture09.png)

## 12. プルリクエスト（PR）のマージ（ブランチ統合）
- 内容に問題がなければマージを行う
- main ブランチへマージ
    1. Merge Pull request をクリック
    2. confirm merge をクリック

## 13. main ブランチでのマージ結果の確認
- 一つ前の手順でリモートリポジトリには反映されていることが確認できている
- ローカルリポジトリ に変更結果を反映する
    - 実行コマンド
        ```bash:title
        % git pull
        ```
    - 実行結果
    ![capture10](./img/practice/capture10.png)
    ![capture11](./img/practice/capture11.png)

## 14. 不要になったブランチの削除
- ローカルリポジトリから不要なブランチを削除
    ```bash:title
    % git branch -d git-lecture
    ```
    ![capture12](./img/practice/capture12.png)
- リモートリポジトリから不要なブランチを削除
    - 省略

## 15. 完了
- 業務で使用していることもあって、スムーズにできたと思います。
- 改めて一つ一つ丁寧に手順を追ってみたことでより理解が深まったように感じました。
- ブランチの移動は今後、 **git switch** を利用していきたいなと思いました。
