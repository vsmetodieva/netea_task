# netea_task
## Containerised system using Docker

## Description
This project contains simple PHP application  with Apache web server, MongoDB, MySQL and XDebug  with options on/off. In additional - phpMyAdmin and MongoDB Express for access to the databases.

## Prerequisites
 - Git
 Mac: https://git-scm.com/download/mac
 Windows: https://git-scm.com/download/win
 Linux: https://git-scm.com/download/linux
 
 - Docker and Docker Compose
 Mac: https://docs.docker.com/desktop/install/mac-install/
 Windows:https://docs.docker.com/desktop/install/windows-install/
 Linux:https://docs.docker.com/desktop/install/linux-install/
 
## Installation
Run the command shown below to build the images.

```bash
  docker-compose build
```

After completing the build, you can run the application using the command shown below.

```bash
  docker-compose up -d
  ```
  How to access:
    - Application
    http://localhost/index.php
    http://localhost/mysql.php
    
    - Databases
  phpMyAdmin - http://localhost:8085
  MongoDB Express http://localhost:8081
  
##  IMPORTANT 
XDebug is enable by default. If you should make production images need to disable it from .env file. Set DISABLE XDEBUG on true.

```bash
   DISABLE_XDEBUG=true
   ```
  


