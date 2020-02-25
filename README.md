# setup-phecodes

Repository for setting up the following environment on `Ubuntu 16.04`:

- `R 3.6.1`
- `SAIGE 0.36.1`
- Selected R packages (see [`extra-packages.yaml`](extra-packages.yaml))

See [`setup.yaml`](setup.yaml) for the Ansible playbook.

## Development

### Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)

### Getting started

Create Vagrant machine and setup environment:

```
vagrant up
```

Connect to Vagrant machine:

```
vagrant ssh
```
