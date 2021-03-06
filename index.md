# Labgoal Docker

## PASSO 0

### 0.1 Don't Worry Be Happy
`docker run -it -v $PWD:/docs -p 80:3000 dannyben/madness`

## PASSO 1

### 1.1 Hello World
`docker run hello-world`

### 1.2 Definindo o comando padrao
`docker run ubuntu ls`

### 1.3 Terminais Iterativos
`docker run -it ubuntu bash`

### 1.4 Escolhendo a versão da Imagem
`docker run -it ruby:2.6 bash`

`docker run -it ruby:2.5 bash`

## PASSO 2

### 2.1 Imagem Personalizada

* Criar o Dockerfile
* Executar `docker build -t minha_imagem .` para criar a imagem

`docker run -it -p 80:3000 minha_imagem`

## PASSO 3

### 3.1 Portas
`docker run -it -p 81:3000 minha_imagem`

`docker run -it -p 9000:3000 minha_imagem`

### 3.2 Volumes
`docker run -it -v $PWD:/docs -p 80:3000 minha_imagem`

## PASSO 4

### 4.1 Servidor Sinatra
`docker run -it -v $PWD:/opt/src -p 80:3000 minha_imagem`

### 4.2 Simplificando com o Docker Compose
`docker-compose up app`

## PASSO 5

### 5.1 Links entre containers
* Adicionar as configurações do mysql no docker-compose

`docker-compose up app`

### 5.2
* Adicionar as configurações do phpmyadmin no docker-compose

`docker-compose up`
