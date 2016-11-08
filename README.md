# AWS Accesskeys
Tool to list AWS IAM user access keys from a given account

##### Setup:

```sh
$ gem install bundler
$ bundle install
```


##### Usage: 

```sh
$ ruby user_keys.rb -h
Options:
  -i, --id=<s>     Your AWS access key ID
  -k, --key=<s>    Your AWS Secret Access Key
  -h, --help       Show this message
```

```sh
$ ruby user_keys.rb -i AKIAPSOPG2DSIEXAMPLE -k EX4mP1e+4Ws-5eCre7+4cc3ss=k3Y
```