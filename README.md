# Ansible playbook for csrgenerator.com

## Requirements

 - Ansible 2.0+
 - A remote system running RHEL/CentOS 7

## Running the playbook

## Helper script

``` bash
./run.sh host.example.com
```

You can pass any number of Ansible flags after the hostname. For example, to run
the playbook as the user `bob` and use sudo for execution, run the following:

``` bash
./run.sh host.example.com -u bob -b
```

## Ansible

  1. Install Ansible role dependencies
  ``` bash
  ansible-galaxy install -r requirements.yml -p roles/
  ```

  1. Create your inventory file. Replace 10.0.0.2 with the IP address or hostname of your RHEL/CentOS 7 server.
  ``` bash
  echo "10.0.0.2" > hosts
  ```

  1. Run `ansible-playbook`
  ``` bash
  ansible-playbook -i hosts csrgenerator.yml -u root
  ```

## Notes

 - By default, Gunicorn will bind to `127.0.0.1:8080`. To override this, set the `csrgen_listen` variable.
