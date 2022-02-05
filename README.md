# PHP-Laravel-Docker-Compose
Compose file for PHP web development

## Build Custom PHP Image
Build your own image, you need change the base image on `Dockerfile`. Just customize the image on your own. Then run:
```
docker build . -t imagename:tag
```

## Change Environment
You can update your stack version and its configuration on `.env` file

## Initiate Laravel Project with Composer
Run this below command with `c` as arguments, this is command for create Laravel 7 project:
```
make composer c="create-project --prefer-dist laravel/laravel:^7.0 project-name"
```

## Spin up Server
Run:
```
make up
```

## Spin up Server
Run:
```
make down
```

## Run Artisan
Run:
```
make artisan c="arguments"
```
