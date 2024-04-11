# Linx Automation

Este repositório contém scripts de teste automatizados utilizando Robot Framework e Browser Library para fluxo de teste na página inicial da Linx. O objetivo é fornecer uma suíte de testes eficiente e fácil de manter que possa validar funcionalidades descritas no desafio

## Pré-requisitos
Python 3.8+

Robot Framework 

## Estrutura
No projeto foi utilizado o padrão de page objects de forma a deixar o repositório mais fácil de compreender e realizar manutenção


## Instalação

### Faça download ou clone o repositório em seu terminal com o comando abaixo
```
git clone https://github.com/jofranlima/Linx-Automation
```


### Navegue até o diretório do extraído

```bash
cd /home/SeuUsuario/Linx-Automation
```
### Instale as dependências necessárias
```bash
 pip install --upgrade robotframework-seleniumlibrary

```
### Verifique se o [robot](https://robotframework.org/) foi instalado com sucesso
```bash
robot --version
```
### Para executar o projeto use o script
```bash
robot -d ./reports ./Tests/home.robot

```

