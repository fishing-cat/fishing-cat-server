# Fishing Cat Server

![Fising Cat](https://cloud.githubusercontent.com/assets/706275/23012983/10ed1fa8-f46c-11e6-9093-1a44aa5aa1bf.png)

[Fishing Cat](https://github.com/fishing-cat/)は標的型攻撃やフィッシングのメール対策訓練を実施するためのツールです。Fishing Catはクライアントとサーバの2つで構成されます。

1. [Fishing Cat Server](https://github.com/fishing-cat/fishing-cat-server): 訓練用サイトと訓練対象者の振る舞いを記録するサーバ・アプリケーションです。
2. [Fishing Cat Client](https://github.com/fishing-cat/fishing-cat-client): 訓練用サイトへ誘導するメールを送付するクライント・アプリケーションです。

Fishing Cat Serverは以下の特徴があります。

1. Heroku Buttonで簡単に組織外のサーバへ訓練用サイトを配置できます。
2. 組織外のサーバに訓練用サイトを配置することで本物の攻撃に近い環境で訓練を実施できます。訓練対象者はURLの確認やサーバ証明書の確認を正しく実践することが可能です。
3. 訓練用サイトのサーバには訓練対象者の氏名やメールアドレスといった識別特定情報を保存しません。代わりに、識別特定情報に依存せず生成された訓練対象者の識別子を仮名化されたデータ（pseudonymised data）として保存します。これにより、訓練用サイトにおける情報漏洩のリスクを低減させながら本格的な訓練の実施が可能です。

## スクリーンショット

![Screenshot01](https://cloud.githubusercontent.com/assets/706275/23370012/9de4ca8a-fd56-11e6-8c37-78813d8abb09.png)

![Screenshot02](https://cloud.githubusercontent.com/assets/706275/23370013/a03b6fbe-fd56-11e6-8c9d-24ca4920bc1c.png)

## デモ

### Admin Page

https://fishing-cat-server.herokuapp.com/admin

* User Name: `admin`
* Password: `admin`

### Sample Phishing Site

https://fishing-cat-server.herokuapp.com/forms/qbamjkxvd/eapvdrrbd

## インストール

### デプロイ

Fishing Cat ServerはRuby on Railsで作成されていますのでRuby on Railsを利用している方であれば容易にサーバへデプロイすることが可能です。

より簡単に訓練用サイトを配置できるようにHeroku Buttonにも対応しています。Herokuのアカウントを作成の上、下記のボタンをクリックします。クリック後はHeroku Buttonのマニュアル通りに手続きを進めてください。

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/fishing-cat/fishing-cat-server)

### 環境変数

|環境変数|説明|例|
|-----|-----|-----|
| `FISHING_CAT_ADMIN_REALM` | 管理者用ページはDigest認証で保護されます。この環境変数にはDigest認証に使用する認証領域（realm）を指定します。| admin |
| `FISHING_CAT_ADMIN_USERNAME` | 管理者のユーザ名を設定します。 | admin |
| `FISHING_CAT_ADMIN_PASSWORD` | 管理者のパスワードを設定します。平文か下記のようなプログラムで生成したハッシュ値を指定します。 | admin |

### Digest認証のパスワードに使用するハッシュ値の生成方法

```ruby
require 'digest/md5'
Digest::MD5.hexdigest(['username', 'realm', 'password'].join(":"))
```

または

```bash
$ echo -n 'username:realm:password' | md5
```

## URL

* **GET** `/images/:cid/:pid`: トラッキングピクセルのURLです。PNGファイルを返します。HTMLメールの `img` 要素の `src` 属性に指定することでメールの開封を追跡します。
* **GET** `/forms/:cid/:pid`: 訓練用サイトのウェブフォームです。このURLにアクセスすることでHTMLメールのリンクのクリックを追跡します。
* **POST** `/forms/:cid/:pid`: 上記のウェブフォームの送信ボタンを押した際にデータが送信されたことを追跡します。
* **GET** `/results/:cid/:pid`: 訓練結果のページです。訓練対象者がウェブフォームの送信ボタンを押した後にリダイレクトされます。最終的にのページへ遷移させて訓練であることを説明する用途を想定しています。
* `/admin`: 管理者用のページです。

## Database

データベースには下記の情報が保存されます。

* `cid`: Campaign ID: 訓練ID
* `pid`: Person ID: 訓練対象者ID
* `action`: 訓練対象者が行った動作
	* `opened_email`: メールの開封
	* `clicked_link`: リンクのクリック
	* `submitted_data`: フォームデータの送信
	* `viewed_result`: 結果の表示

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Author

Masayuki Higashino
