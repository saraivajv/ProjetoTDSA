# ProjetoTDSA

Este é um projeto de CRUD (Create, Read, Update, Delete) desenvolvido em **ASP.NET Web Forms** como parte do processo seletivo da **TDSA Sistemas**.

## Funcionalidades

O sistema permite:

- ``Inserir Clientes``: Adicionar novos clientes ao banco de dados.
- ``Listar Clientes``: Exibir uma lista de clientes com suas respectivas informações.
- ``Editar Clientes``: Modificar os dados de um cliente existente.
- ``Excluir Clientes``: Remover clientes do sistema com uma confirmação de exclusão.
  
As operações são realizadas em uma tabela simples de banco de dados SQL Server, que contém os seguintes campos:
- ``CLI_ID`` (int): Identificador único do cliente.
- ``CLI_NOME`` (varchar): Nome do cliente.
- ``CLI_DATANASCIMENTO`` (date): Data de nascimento do cliente.
- ``CLI_ATIVO`` (bit): Status de ativo do cliente.

## Tecnologias Utilizadas

- ``ASP.NET Web Forms (C#)``
- ``SQL Server``
- ``HTML5, CSS3``
- ``JavaScript`` para confirmação de exclusão

## Como Rodar o Projeto

1. Clone o repositório para sua máquina local:

   `bash
   git clone https://github.com/SEU_USUARIO/ProjetoTDSA.git
   `

2. Abra o projeto no ``Visual Studio``.
3. Verifique a string de conexão no arquivo ``Web.config`` para garantir que o projeto está apontando para o seu banco de dados local:
   
   `xml
   <connectionStrings>
       <add name="ConnectionString" connectionString="Server=SEU_SERVIDOR;Database=ProjetoTDSA;Trusted_Connection=True;" providerName="System.Data.SqlClient" />
   </connectionStrings>
   `

4. Configure o banco de dados criando a tabela ``CLIENTE``:

   `sql
   CREATE TABLE CLIENTE (
       CLI_ID INT PRIMARY KEY IDENTITY(1,1),
       CLI_NOME VARCHAR(100) NOT NULL,
       CLI_DATANASCIMENTO DATE NOT NULL,
       CLI_ATIVO BIT NOT NULL
   );
   `

5. Execute o projeto no Visual Studio (pressione ``F5``).

## Autor

``João Victor Gonçalves de Albuquerque Saraiva``

Este projeto foi desenvolvido como parte do processo seletivo da ``TDSA Sistemas``.
