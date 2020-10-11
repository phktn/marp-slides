---
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('/.assets/hero-background.jpg')
marp: true
---

[phktn]: https://github.com/phktn
[avatar-phktn]: https://avatars.githubusercontent.com/phktn
[docker-logo]: /.assets/wrokshop/docker/vertical-logo-monochromatic.png
![bg left:40% 60%][docker-logo]

# **Docker 入門**

### by [P Hackathon][phktn]

---

## 推奨環境

#### **OS** : Ubuntu 20.04 LTS (Focal Fossa)

- 下記 OS でも大丈夫なはず...
    - Ubuntu 18.04 LTS (Bionic Beaver) / 16.04 LTS (Xenial Xerus)

```bash
$ lsb_release -d
Description:	Ubuntu 20.04.1 LTS
```

#### **マシンのアーキテクチャ** : x86_64 / amd64

```bash
$ arch
x86_64
```

---

## Docker インストール

公式 : https://docs.docker.com/engine/install/ubuntu/

```bash
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
```

---

## Docker の起動確認

公式 : https://docs.docker.com/engine/install/ubuntu/

```bash
$ sudo docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working correctly.

# 以下省略
```

---

## Docker を非 root ユーザーで管理する

公式 : https://docs.docker.com/engine/install/linux-postinstall/

```bash
sudo usermod -aG docker $USER
```

##### **Ubuntu を再起動する**

```bash
$ docker run hello-world # sudo なし

Hello from Docker!
This message shows that your installation appears to be working correctly.

# 以下省略
```

---

## Docker コンテナ一覧を表示する `docker ps`

- `-a` オプション
    - すべてのコンテナを表示する（デフォルトでは実行中のみ）

```bash
$ docker ps -a
CONTAINER ID  IMAGE        COMMAND   CREATED        STATUS                    PORTS  NAMES
1e8e7a134875  hello-world  "/hello"  3 minutes ago  Exited (0) 3 minutes ago         charming_bell
ab06f52a3dff  hello-world  "/hello"  5 minutes ago  Exited (0) 5 minutes ago         frosty_easley
```

---

## Docker コンテナを削除する `docker rm`

**コンテナ ID** や **コンテナの名前** を引数で指定する

```bash
docker rm 1e8e7a134875  # コンテナ ID
```

```bash
docker rm frosty_easley # コンテナの名前
```

```bash
$ docker ps -a
CONTAINER ID  IMAGE  COMMAND  CREATED  STATUS  PORTS  NAMES
# 何も表示されない
```

---

### 商標について

Docker および Docker のロゴは Docker,Inc. の米国およびその他の国における商標または登録商標です。

---

<!-- _class: lead -->
# <!--fit--> [PR] 一日中、好きなコードを書くイベントです
# <!--fit--> ![w:1em h:1em][avatar-phktn] P Hackathon
# <!--fit--> :link: https://github.com/phktn
