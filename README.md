# Run a SFTP server with AWS S3 storage in Docker or Kubernetes

## Run in Docker
```
export AWS_ACCESS_KEY_ID=xxxxx
export AWS_SECRET_ACCESS_KEY=xxxx
export SFTP_USER=sftpuser
export SFTP_PASSWORD=password
export S3_BUCKET=mybucket

docker build -t test/sftp .
docker run -p 22 --privileged -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e SFTP_USER -e SFTP_PASSWORD -e S3_BUCKET test/sftp
sftp -P 32798 sftpuser@localhost
```

## Run in Kubernetes
```
export AWS_ACCESS_KEY_ID=xxxxx
export AWS_SECRET_ACCESS_KEY=xxxx
export SFTP_USER=admin
export SFTP_PASSWORD=password
export SSH_KEY=~/.ssh/id_rsa.pub
export S3_BUCKET=mybucket
export S3_KEY=/
make
```

details http://blog.bonesoul.com/sftp-s3-kubernetes/
