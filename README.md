# openstack-charm

#errors

Failed to connect to MySQL

Cluster is inaccessible from this instance. Please check logs for details
```
juju run-action --wait mysql-innodb-cluster/leader reboot-cluster-from-complete-outage
```
hook failed: "start"
```
juju resolve --no-retry vault/0
```
if machine down
```
juju retry-provisioning <machine no>
```
To restart 
```
juju run-action --wait mysql-innodb-cluster/1 restart-services
```
To check logs of unit 
```
juju debug-log –include <unit>
 ```
 To change file config 

  ```
  juju config <app> --file <file>
  ```
  ex:
  ```
  juju config ceph-osd --file ceph-osd.yaml
 ```
  
  If Vault service not running then 
  
      -unseal the unit again followed by vault conf
      
      
      
 not yet solved errors     
  ```
  working on:
  Ceph broker request incomplete
  No block devices detected using current configuration
```


 For Remove application
 ```
juju remove-application --force <aaplication_name>
```



some important links
```
https://docs.openstack.org/charm-guide/rocky/openstack-on-lxd.html
https://docs.openstack.org/charm-guide/victoria/openstack-on-lxd.html
https://paulylinux.wordpress.com/2018/02/28/configure-lxd-for-openstack/
```
