# fio_benchmark
新システムのストレージ検証用 fioのansible
# 実行手順
- ansible/hosts/hostをベンチマークを実行したいマシンのIPアドレスに変更
- 下記を実行

```
ansible-playbook ansible/fio.yml -i ansible/hosts/host --private-key ~/.ssh/id_rsa
```
