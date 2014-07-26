# sample-dev-env

VagrantとChef Soloを用いて開発環境を構築します。
いろんなプロジェクトに汎用的に使えるよう実装しました。

## Structure

アプリケーションとChefリポジトリは別のGitリポジトリで管理することを想定しています。

```
/app
  # アプリケーション配置ディレクトリ
/infra
  # Chefリポジトリ配置ディレクトリ
.gitignore
Vagrantfile
```

## Usage

まず、`vagrant-omnibus`というVagrantプラグインをインストールします。

```
$ vagrant plugin install vagrant-omnibus
```

あとは、以下のようにこのリポジトリを`clone`して`vagrant up`します。

```
$ git clone git@github.com:kami30k/sample-dev-env.git [project]
$ cd [project]
$ vagrant up
```

`vagrant up`すると、`/app`、`/infra`各ディレクトリがない場合は自動的に各リポジトリから`clone`してきます。
