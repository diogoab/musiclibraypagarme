# Projeto teste Pagar ME

### Esse projeto tem como objetivo, criar gatilhos automatizados para instalar uma aplicação simples na nuvem AWS da maneira mais automatizada possível.

# Esse repositório e publico, sendo possível colaborar através de PR. 
[![prs-badge]][prs-link] &nbsp;

Para começar a utilizar essa proposta, existe alguns requisitos
São eles:
## Pré-requisitos

* Terraform
* Docker
* docker-compose
* Conta AWS
* AWS CLI



- Terraform - https://www.terraform.io
- Docker - https://docs.docker.com/engine/install/ubuntu/
- AWS cli - https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2-linux.html
- Uma Conta na AWS ativa - https://aws.amazon.com

Esse projeto foi desenvolvido no SO Linux, mas isso não quer dizer que possa usar no Microsoft Windows, mas essa parte deixo com vc!

Pensei em algo bem pratico para mostrar alguns recursos do Terraform, Docker e AWS

Aqui esta um desenho para ilustrar essa instalação

[Desenho]

Então vamos la 

Eu pensei em fazer tudo com apenas um único comando, mas e possível fazer com um script Shell, mas de todos teria que criar as variáveis para poder funcionar, enfim, vamos fazer tudo em hand-ons.

A parte local esta baseado com uma aplicação simples em Python que se chama MusicLibraryPagarME, que persiste usando o DynamoDB, no entanto escrevi um Docker compôs para esse cenário

<a href="https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/diogoab/musiclibraypagarme/dev/app/docker-compose.yml">
  <img src="https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png" alt="Try in PWD"/>
</a>
Entáo, vamos começar fazendo um “fora” desse repositório pois termos alguns passo para por em produção 100%!

Crie uma Branch para fazer seu desenvolvimento, e depois abrir um PR para fazer a automação rodar!

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