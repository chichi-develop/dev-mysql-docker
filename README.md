## 実行

### docker起動

```bash
docker-compose up -d
```

### docker起動確認
注: 起動に失敗していたら上記のdocker起動コマンドを再度叩いてください。

```
docker-compose ps
```

### DB初期化(シェル実行)

```bash
./init-mysql.sh
```

## 確認
phpMyAdminで確認してみましょう。

http://localhost:8085

下記のようになって入れば成功です。

<img width="1131" alt="スクリーンショット 2018-11-28 11.28.31.png" src="https://qiita-image-store.s3.amazonaws.com/0/290840/9fd05591-36bb-0728-8d9f-e82c97a4a306.png">


## 参考
  - [docker-compose でMySQL環境簡単構築]( https://qiita.com/A-Kira/items/f401aea261693c395966)