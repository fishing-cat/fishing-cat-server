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
| `FISHING_CAT_REDIRECT_URL` | ウェブフォームから情報を送信した後にリダイレクトさせるURLを設定します。フィッシングサイトの訓練であることを説明するウェブページのURL等を設定します。 | /results or http://example.net |
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

* `/admin/`: 管理者用のページです。イベントの履歴を閲覧できます。
* `/?cid=[CID]`: 訓練用サイトのウェブフォームです。このURLにアクセスしたり送信ボタンをクリックすると各種情報がデータベースに記録されます。CIDは `Cat ID` の略で猫の識別子です。訓練対象者の振る舞いを追跡するために使用します。
* `/results`: 訓練結果のページです。訓練対象者がウェブフォームに何らかの入力を行い送信した後に、このページへ遷移させて説明を実施することを想定しています。


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
