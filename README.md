# k8s-files-to-cm

> convert files under a directory to k8s configmap easily.

## Motivations
- Wanted to attach volumes that contains configurations file to a container.
- It's a huge labor to do it manually.

## Convert

### Simple way
`$ bin/convert.sh a/folder/contains/confs`

### To a file
`$ bin/convert.sh a/folder/contains/confs > your-configmap.yaml`
