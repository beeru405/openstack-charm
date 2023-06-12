#Ceph-osd

juju deploy -n 4 --channel quincy/stable --config ceph-osd.yaml --constraints tags=compute ceph-osd

#Nova Compute
juju deploy -n 3 --to 1,2,3 --channel zed/stable --config nova-compute.yaml nova-compute

#my-sql-innodb
juju deploy -n 3 --channel 8.0/stable mysql-innodb-cluster

#Vault
juju deploy --channel 1.8/stable vault

juju deploy --channel 8.0/stable mysql-router vault-mysql-router
juju add-relation vault-mysql-router:db-router mysql-innodb-cluster:db-router
juju add-relation vault-mysql-router:shared-db vault:shared-db
#initialize vault
#https://opendev.org/openstack/charm-vault/src/branch/master/src/README.md
juju add-relation mysql-innodb-cluster:certificates vault:certificates


juju run-action --wait vault/leader generate-root-ca
