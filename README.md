# Projeto teste Pagar ME

### Esse repositório e publico, sendo possível colaborar através de PR. 

Esse projeto esta dividido em duas partes Local e Nuvem e tem como objetivo, criar gatilhos automatizados para instalar uma aplicação simples tanto local em um ambiente de desenvolvimento como na nuvem AWS da maneira mais automatizada possível.

## Local
Se não quiser instalar nada sua máquina pode apenas apertar o botão e começar a usar.

- para este teste você precisa apenas de uma conta no dockerhub - https://hub.docker.com

<a href="https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/diogoab/musiclibraypagarme/dev/app/docker-compose.yml">
  <img src="https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png" alt="Try in PWD"/>
</a>
<b>

- Para destruir basta apenas fechar a sessão do PWD.

## Mas se quiser testar na sua máquina, existe alguns requisitos que são eles:
### Pré-requisitos

* agent git - https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
* Docker - https://docs.docker.com/engine/install/ubuntu/
* Docker-compose - https://docs.docker.com/compose/install/
- Obs: esse projeto foi escrito no SO Linux, mas isso não quer dizer que não possa usar no Microsoft Windows, mas essa parte deixo com vc!

1. Baixar os códigos: 
```
$ git clone https://github.com/diogoab/musiclibraypagarme.git
```

2. acesse o diretório onde está a aplicação e os arquivos do docker:
```
$ cd musiclibrarypagarme/app
```

3. Construir a imagem local:
```
$ docker build -t jokerdab/musiclibrarypagarme-local -f Dockerfile-Local .
```

4. Instalar as aplicações: 
```
$ docker-compose up -d
```

5. Agora acesse a aplicação através do localhost:5000 e pode começar a testar, uma tela parecida com essa deve aparecer no navegador:

![Alt text](./images/app.png?raw=true "App Running")

6. Para desinstalar basta apenas executar:
```
$ docker-compose down
```

## Nuvem

Para parte de nuvem pensei em algo bem prático para mostrar alguns recursos do Terraform, Docker e AWS, no entanto precisa de um "preset" para chegar no momento de instalação.
### Pré-requisitos

* Terraform - https://www.terraform.io
* AWS cli - https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2-linux.html
* Uma Conta na AWS ativa - https://aws.amazon.com

Aqui esta um desenho para ilustrar essa instalação em Nuvem

![Alt text](./images/infra-aws.png?raw=true "Infra Running")

## Instalação pelo Github Actions

### Preset Github Actions

1. crie um repositório no github para hospedar os códigos do teste.

2. Para este teste e necessario definir os valores de secrets no github para podermos executar actions: https://docs.github.com/pt/actions/security-guides/encrypted-secrets
```
AWS_ACCESS_KEY_ID 

AWS_SECRET_ACCESS_KEY 

AWS_REGION 

REPO_NAME
```

### Preset Terraform e AWS

1. Configurar acessos programaticos de ACCESS_KEY e SECRET_KEY execute e informe as informações:
```
$ aws configure
```
- Obs: a região que usei foi "us-west-2"

2. Baixar os códigos: 
```
$ git clone https://github.com/diogoab/musiclibraypagarme.git
```

3. acesse o diretório onde está a aplicação e os arquivos do terraform para o preset do state:
```
$ cd musiclibrarypagarme/terraform/state
```

4. Inicie o terraform no diretório do state
```
$ terraform init
```

5. Planeje para verificar o que vai ser criado na AWS com:
```
$ terraform plan 
```

6. Instale o terraform preset:
```
$ terraform apply
```
7. Agora vamos navegar até a pasta do actions, retorne para a pasta com:
```
$ cd ../.github/workflows
```
8. Para criar a infraestrutura na AWS e instalar a aplicação precisamos editar o arquivo build-docker-deploy.yml e remover os comentários com "#" da linhas 83 a 87 e comentar as linhas 89 a 93 com "#" em cada linha.

9. Agora faça o commit do código e push para o repositorio do github para ver a infraestrutura ser criada.

10. Para destruir a infraestrutura na AWS e remover tudo precisamos editar o arquivo build-docker-deploy.yml e remover os comentários com "#" da linhas 83 a 87 e comentar as linhas 89 a 93 com "#" em cada linha.

11. Agora faça o commit do código e push para o repositorio do github para ver a destruição da infraestrutura na AWS.

- Obs: Se por acaso entende que precisa alterar algo na infraestrutura pode alterar no arquivos de variaveis do terraform.


Bom esse este modelo atende para ter minimamente uma automação para implantação na AWS apenas com push no github, recomendo para algo que vá para produção que seja os eventos de Merge entre as branchs com politicas de aceite e code review.

# Thanks!




