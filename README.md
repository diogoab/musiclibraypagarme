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

Mas se quiser testar na sua máquina, existe alguns requisitos que são eles:
## Pré-requisitos

* agent git - https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
* Docker - https://docs.docker.com/engine/install/ubuntu/
* Docker-compose - https://docs.docker.com/compose/install/
- Obs: esse projeto foi escrito no SO Linux, mas isso não quer dizer que não possa usar no Microsoft Windows, mas essa parte deixo com vc!

1. Baixar os códigos 
```
$ git clone https://github.com/diogoab/musiclibraypagarme.git
```

2. acesse o diretório onde está a aplicação e os arquivos do docker
```
$ cd musiclibrarypagarme/app
```

3. Construir a imagem local
```
$ docker build -t jokerdab/musiclibrarypagarme-local -f Dockerfile-Local .
```

4. Instalar as aplicações 
```
$ docker-compose up -d
```

5. Agora acesse a aplicação através do localhost:5000 e pode começar a testar, uma tela parecida com essa deve aparecer no navegador:

[image]





Pensei em algo bem pratico para mostrar alguns recursos do Terraform, Docker e AWS

Aqui esta um desenho para ilustrar essa instalação em produção

[Desenho]

Então vamos la 



* Terraform - https://www.terraform.io
* AWS cli - https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2-linux.html
* Uma Conta na AWS ativa - https://aws.amazon.com

mas de todo modeo temos que criar as variáveis para poder funcionar, enfim, vamos fazer tudo em hand-ons.

A parte local esta baseado com uma aplicação simples em Python que se chama MusicLibraryPagarME, que persiste dados usando o DynamoDB, no entanto escrevi um Docker-compose para esse cenário


Primeiro vamos começar fazendo um “fork” desse repositório para por a mão na massa,

Recomendo que mesmo com o codigo local crie uma Branch para fazer seu desenvolvimento

Localmente você vai precisar do ambiente Docker preparado para conseguir rodar o projeto.

[link]

#

#

Para ambiente em produção

AWS CLI

Terraform

Configure AWS

Iniciando o terraform

Planejando

Aplicando

Destruindo

# 

#

#

#

#