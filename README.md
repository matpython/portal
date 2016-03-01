[![ZenHub] (https://raw.githubusercontent.com/ZenHubIO/support/master/zenhub-badge.png)] (https://zenhub.io)

# Aneta Please Order Food
Yet another lunch web app for intranet use in your office.


## Installation

### Vagrant (for PyPila students):

Once you have the `Vagrantfile` and `vagrant_bootstrap.sh` downloaded you do the following:

```
host $ cd /your/working/directory
host $ vagrant up
host $ vagrant ssh  # or putty to vagrant@127.0.0.1:2222 (password: vargrant)
vagrant $ mkvirtualenv apof
vagrant $ git clone https://github.com/<your_username>/apof.git tmp
vagrant $ cp -r tmp/.git app/.git
vagrant $ rm -rf tmp
vagrant $ cd app
vagrant $ git reset --hard origin/master
vagrant $ git remote add upstream https://github.com/PyPila/apof.git
vagrant $ git pull upstream master
vagrant $ pip install -r requirements/devel.txt
```

Each time you get back to your project you should use
```
host $ cd /your/working/directory
host $ vagrant up
host $ vagrant ssh  # or putty to vagrant@127.0.0.1:2222 (password: vargrant)
vagrant $ workon apof
```

From now you can interact with your project
```
vagrant $ python manage.py <command>
```

Keep this command handy as you should use it often to be on track with the code pushed by others
```
vagrant $ git pull upstream master
```

### Docker (advanced):

```
host $ docker build -t apof -f devel.Dockerfile .
host $ docker run --rm --name apof_run -it -v $(pwd)/apof:/run/app -w /run/app -p 8000:8000 apof
```
