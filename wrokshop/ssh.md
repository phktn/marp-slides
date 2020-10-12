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

# **SSH 入門**

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

## Secure Shell (SSH) とは

###### 出典: 『ウィキペディア（Wikipedia）』 (2020/09/28 03:56 UTC 版)
###### https://ja.wikipedia.org/wiki/Secure_Shell

> Secure Shell（セキュアシェル、SSH）は、暗号や認証の技術を利用して、安全にリモートコンピュータと通信するためのプロトコル。パスワードなどの認証部分を含むすべてのネットワーク上の通信が暗号化される。

---

### `ssh-keygen` - SSH の公開鍵と秘密鍵を作成する

---

### `ssh` - Remote PC でコマンドを実行する

---

### `ssh` - Remote PC にログインする

```bash
Local-PC $ ssh 127.0.0.1
Welcome to ...
```

---

### `exit` - Shell を終了する

```bash
Local-PC $ ssh 127.0.0.1
Welcome to ...
```

```bash
Remote-PC $ exit
ログアウト
Connection to 127.0.0.1 closed.
```

```bash
Local-PC $ exit
# 端末 (terminal) が閉じられる
```

[exit]: https://servlet.mizo0203.com/plantuml/svg/hL3DIWCn6BpdAK9wMoXQQMKfTQ7MtbPQgjwyXEotDdIRr2Jh3-91Un9lWbSVmOk83xG8FeR9PcsLMl1W3laWtynaPYWpKk4Z3GhDg3ASyHaL1fDOCfhLXxrZKTmyuuCnP1d1LEDuqEl6Fw4Zc4e3ls17_Vt1OHyXFU72CkWKQpZDGJ30LmZRqrLAdlTaPXtKcgqMtMwMpp5F8UO2TgLAGAtkXylV_mAXR7AYP2wI2fQcQGWDRy2bNwVXbslOrmYvqd0zyfMqVMvSt3vylBwztpyYoWm_emQgob0v7DxNqiP1G8ZMOq8iwQMOFnLpUzy5mPBvLQ2VtxcTLDhgcREqKzlS2iEzHkJqu8AR5S7EXaD7I879bK09QAFavK9zOQmAyX_QfTGd
![bg right:40% 100%][exit]

---

### `nohup` - Shell 終了後も処理を続ける

---

### Tera Term を使ってみよう

---

### Tera Term で画面転送 (X11 フォワーディング)

---

#### 参考文献

- Linux基本コマンドTips - ＠IT
    - https://www.atmarkit.co.jp/ait/series/3065/

---

<!-- _class: lead -->
# <!--fit--> [PR] 一日中、好きなコードを書くイベントです
# <!--fit--> ![w:1em h:1em][avatar-phktn] P Hackathon
# <!--fit--> :link: https://github.com/phktn
