# projeto final - turma 910

## comando para criar a rede

`docker network create rede_ada_projeto_final`

## comando pra montar a imagem

`docker build -f build/Dockerfile.app -t app_projeto_final:1 .` 

## comandos para rodar os containers

| container | comando | 
|  --- |  --- | 
| postgres |  `docker run -d --env-file env.dev.psql --name psql_projeto_final --network rede_ada_projeto_final -v ${pwd}/psql_start:/docker-entrypoint-initdb.d -p 5432:5432 postgres:15-alpine` | 
| aplicacao |  `docker run -d --env-file env.dev.app --name app_projeto_final --network rede_ada_projeto_final -p 8080:5000 app_projeto_final:1`  |