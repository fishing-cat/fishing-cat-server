# Fishing Cat Server

![Fising Cat](https://cloud.githubusercontent.com/assets/706275/23012983/10ed1fa8-f46c-11e6-9093-1a44aa5aa1bf.png)

[Fishing Cat](https://github.com/fishing-cat/)は標的型攻撃やフィッシングのメール対策訓練を実施するためのツールです。Fishing Catはクライアントとサーバの2つで構成されます。

1. [Fishing Cat Server](https://github.com/fishing-cat/fishing-cat-server): 訓練用サイトと訓練対象者の振る舞いを記録するサーバ・アプリケーションです。
2. [Fishing Cat Client](https://github.com/fishing-cat/fishing-cat-client): 訓練用サイトへ誘導するメールを送付するクライント・アプリケーションです。

Fishing Cat Serverは以下の特徴があります。

1. [はやい] Heroku Buttonで簡単に組織外のサーバに訓練用サイトを配置できる。
2. [うまい] 組織外に訓練用サイトを配備することで本物に近い環境で訓練を実施できる。
3. [やすい] 訓練用サイトにはメールアドレスやパスワードなどの機密性の高い情報を保存しないため、情報の格付け及び取扱制限に関する規程に抵触せず、安全に訓練を実施できる。

## インストール

### デプロイ

Herokuのアカウントを作成の上、下記のボタンをクリックします。クリック後はHeroku Buttonのマニュアル通りに手続きを進めてください。

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

* **GET** `/images/:cid/:pid/:fingerprint`: トラッキングピクセルのURLです。PNGファイルを返します。HTMLメールの `img` 要素の `src` 属性に指定することでメールの開封を追跡します。
* **GET** `/:cid/:pid/:fingerprint`: 訓練用サイトのウェブフォームです。このURLにアクセスすることでHTMLメールのリンクのクリックを追跡します。
* **POST** `/:cid/:pid/:fingerprint`: 上記のウェブフォームの送信ボタンを押した際にデータが送信されたことを追跡します。
* **GET** `/result/:cid/:pid/:fingerprint`: 訓練結果のページです。訓練対象者がウェブフォームの送信ボタンを押した後にリダイレクトされます。最終的にのページへ遷移させて訓練であることを説明する用途を想定しています。
* `/admin`: 管理者用のページです。

| Param | Name |
|-----|-----|-----|
| `:cid` | Campaign ID |
| `:pid` | Person ID |
| `:fingerprint` | Fingerprint |

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
