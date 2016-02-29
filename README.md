[![ZenHub] (https://raw.githubusercontent.com/ZenHubIO/support/master/zenhub-badge.png)] (https://zenhub.io)

# Aneta Please Order Food
Yet another lunch web app for intranet use in your office.


## Installation

### Vagrant (for PyPila students):

One you have the `Vagrantfile` and `vagrant_bootstrap.sh` downloaded (preferably by git clone on your host machine) you do the following:

```
host $ cd /your/dev/directory
host $ vagrant up
host $ vagrant ssh
vagrant $ mkvirtualenv apof
vagrant $ cd app
vagrant $ git clone <your_fork>
vagrant $ cd apof
vagrant $ git remote add upstream <this_repo>
vagrant $ pip install -r requirements/devel.txt
```

Each time you get back to your project you should use
```
host $ cd /your/dev/directory
host $ vagrant ssh
vagrant $ workon apof
```

From now you can interact with your project
```
vagrant $ python manage.py <command>
```
