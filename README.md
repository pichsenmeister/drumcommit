# drumcommit

drumcommit is a little tool for git cli users on linux and mac. it shows your coworkers, that you are working hard by playing different sounds on git commit, checkout and push.


have fun!

## installation

clone repository

```
git clone https://github.com/pichsenmeister/drumcommit.git
```

install drumcommit via terminal

```
sh install.sh
```

### usage

at the moment, you can install 3 different hooks

* commit - plays the original drumcommit drumroll sound on every commit
* checkout - play a sound everytime you switch branches
* push - plays a sound everytime you push

to install these hooks, ```cd``` to your git repository's home folder, then type

```
drumcommit <option>
```

where ```<option>``` can be either `commit`, `checkout` or `push`

