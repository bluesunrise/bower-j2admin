# bower-j2admin
Jetspeed J2-Admin Bower Deps
================
Bower Dependency Management for Jetspeed Administrative Portlets
Jetspeed's J2-Admin project is now using Angular portlets. This project moves the dependency management aspects
 of Angular apps with Bower out of the Apache environment, simplifying license management.

J2-Admin developers can use this project to manage their Bower dependences. A script is provided to copy minimal
scripts and licenses into the J2-Admin project proper, where they can be checked in.

A script file is provided to simplify this process.

Getting Started
----------------
*Note: all global NPM commands should be ran as sudo on Macs*

1. Check it out

    ```sh
    git clone https://github.com/bluesunrise/bower-j2admin.git
    ```

2. Install node.js, which should give you npm... follow instructions here:

    http://nodejs.org/

    For Fedora/CentOS Linux distributions:

    ```sh
    sudo yum install nodejs
    sudo yum install npm
    ```

3. Install [Bower]

    ```sh
    sudo npm install -g bower
    ```

4. Install Bower Components (this may take two attempts):

    ```sh
    bower install
    ```


Build
----------------
Copy the configured dependencies into J2-Admin. You may need to configure this script to copy into correct directory

```sh
./copy-deps.sh
```
