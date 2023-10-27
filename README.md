# Banco de Dados de Informações de Países

Este repositório contém um script SQL para criar um banco de dados que armazena informações sobre países. O banco de dados é projetado para permitir o armazenamento de detalhes sobre países.

## Arquivos SQL
Dentro do diretório .\Countries estão localizados os arquivos:

- `countries.sql`: Este script cria o banco de dados `paises` após ETL, com as tabelas necessárias, e os dados.
- `Dockerfile`: Este arquivo parametriza a criação do container no Docker Desktop.

Dentro do diretório .\dw estão localizados os arquivos:

- `dw.sql`: Este script cria o banco de dados `paises` após ETL, com as tabelas necessárias, e os dados.
- `Dockerfile`: Este arquivo parametriza a criação do container no Docker Desktop.


No diretório .\ETL estão localizados os arquivos:
- `Countries - ETL`: Arquivo .ktr gerado via etl e utlizado para construção do arquivo .sql para criação do banco de dados.  
- `Job`: Arquivo de automação diária dos arquivos ETL.

## Uso

mysql:8.0.16
Docker Desktop