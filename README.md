
**VolunteerHub**
===================

![ruby](https://img.shields.io/badge/Ruby-2.3.3-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)

#Sobre o projeto

Muitas pessoas querem ajudar de alguma forma, mas não sabem onde ou o que fazer exatamente.
Este App é uma plataforma que tem como objetivo centralizar projetos voluntários e aproximar instituições que precisem de ajuda com pessoas que desejam ajudar.

# Require
```
  * Docker
  * Docker Compose
```
# Stack
```
  * Application  
  * Redis
  * Postgres
  * Elastic Search
```
# Getting Started

## 1. Clone o repositorio

## 2. Execute dentro do projeto:
```
   $ mkdir data data/application&&touch data/application/.env
```   

## 3. Add data/application/.env
```
  cp data/application/.env.dist data/application/.env
```

## 4. Start docker-compose
```
   $ docker-compose up --build      
```

# Run
```
$ docker-compose exec app rails db:create db:migrate db:seed
```

# Test App
```
$ docker-compose website api rspec
```
