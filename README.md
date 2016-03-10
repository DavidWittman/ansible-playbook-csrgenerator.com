# Ansible playbook for csrgenerator.com

## Requirements

 - Ansible 1.9+
 - A remote system running RHEL/CentOS 7

## Running the playbook

  1. Install Ansible role dependencies
  ``` bash
  ansible-galaxy install -r requirements.yml -p roles/
  ```

  1. Create your inventory file. Replace 10.0.0.1 with the IP address or hostname of your RHEL/CentOS 7 server.
  ``` bash
  echo "10.0.0.1" > hosts
  ```

  1. Run `ansible-playbook`
  ``` bash
  ansible-playbook -i hosts csrgenerator.yml -u root
  ```

## Notes

 - By default, Gunicorn will bind to `127.0.0.1:8080`. To override this, set the `csrgen_listen` variable.
