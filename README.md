# k8s-files-to-cm

> convert files under a directory to k8s configmap easily.

## Motivations
- Wanted to attach volumes that contains configurations file to a container.
- It's a huge labor to do it manually.

## Convert

```
$ export config_name=my-config
$ bin/convert.sh $config_name a/folder/contains/confs
```
