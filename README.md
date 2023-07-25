# LINUXtips-Giropops-Senhas

### Desafio Prático do Day 2

-----------------------------------------|----------------------------------|--------------------------------------|
Nome                                     | Configuração                     | Descrição                            |
-----------------------------------------|----------------------------------|--------------------------------------|
`container-redis`                        | `redis-server`                   | `default`                            |
-----------------------------------------|----------------------------------|--------------------------------------|
`porta`                                  | `5000`                           | `default`                            |
-----------------------------------------|----------------------------------|--------------------------------------|
`dockerhub-image`                        | `lucascarmo/giropops-senhas`     | `default`                            |
-----------------------------------------|----------------------------------|--------------------------------------|
`tag`                                    | `1.0`                            | `default`                            |
-----------------------------------------|----------------------------------|--------------------------------------|

**Etapas de execução:**

Criando container de redis

```bash
docker container run -d --name <container-redis> redis
```

Criando container da aplicação **giropops-senhas** e adicionando ao link do container **redis**

```bash
docker container run -d -p <porta>:5000 --name giropops-senhas --link <container-redis>:redisdb <dockerhub-image>:<tag>
```

Listando containers em execução

```bash
docker container ls
```

Teste no navegador

```bash
http://172.17.0.3:5000/
http://localhost:5000/
```

Finalizando containers em execução

```bash
docker container rm -f $(docker ps -aq)
```