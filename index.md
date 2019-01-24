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
