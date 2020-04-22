# AWS CLI Actions

awscli using Docker image.
It is automatically updated when version of `awscli` is updated.
Insipired by [b4nst/docker-awscli](https://github.com/b4nst/docker-awscli)

## Example
 
### Print version of awscli

```yaml
- name: Echo version of aws-cli
  uses: hannut91/aws-cli@1.18.43
  with:
    args: --version
```

### Upload files to AWS S3rc

```yaml
- name: Upload files
  uses: hannut91/aws-cli@v1.18.43
  with:
    args: s3 cp test.txt s3://bucket-name/
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_DEFAULT_REGION: ap-northeast-2
```

## Sources

* https://pypi.org/pypi/awscli
* https://github.com/b4nst/docker-awscli
