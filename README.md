# sample-dev-env

VagrantとChef Soloを用いて開発環境を構築します。
同一プロジェクトのメンバーが同じ環境で開発することを目的として実装しました。

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

### 自動で構築する場合

以下の手順で`./setup.sh`を実行すると、開発環境を自動で構築できます。

```
$ git clone git@github.com:kami30k/sample-dev-env.git [project]
$ cd [project]
$ chmod +x ./setup.sh
$ ./setup.sh
```

### 手動で構築する場合

#### 1. vagrant-omnibusをインストールする

`vagrant-omnibus`というVagrantプラグインをインストールします。

```
$ vagrant plugin install vagrant-omnibus
```

#### 2. このプロジェクトをcloneする

このリポジトリを`clone`します。
ついでに`cd`しておきます。

```
$ git clone git@github.com:kami30k/sample-dev-env.git [project]
$ cd [project]
```

#### 3. app/infra各リポジトリをcloneする

別リポジトリで管理している`app`/`infra`各リポジトリを`clone`します。

```
$ git clone git@github.com:kami30k/sample-app.git app
$ git clone git@github.com:kami30k/sample-infra.git infra
```

#### 4. vagrant upする

あとは`vagrant up`すれば開発環境が構築されます。

## Update

Chefの変更を適用したい場合は、Chefリポジトリを更新した上で、`vagrant provision`を実行します。

```
$ vagrant provision
```
