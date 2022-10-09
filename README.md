## Copier Generator

Copier template for scaffolding new generator upon [fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc) project.

## Quickstart

To use this template outside `fastapi-mvc`:

Prerequisites:

* Python 3.8 or later [How to install python](https://docs.python-guide.org/starting/installation)
* Git 2.27 or newer
* copier 6.2.0 or later

```shell
copier copy "https://github.com/fastapi-mvc/copier-generator.git" /path/to/your/new/project
```

## Using Nix

```shell
nix-shell shell.nix
copier copy "https://github.com/fastapi-mvc/copier-generator.git" /path/to/your/new/project
```
