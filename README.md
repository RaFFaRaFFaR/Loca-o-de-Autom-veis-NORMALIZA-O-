
# Locação de Automóveis (NORMALIZAÇÃO)
#
#

![image](https://github.com/RaFFaRaFFaR/Loca-o-de-Autom-veis-NORMALIZA-O-/assets/127689567/723b9e49-aa72-43df-8251-498459c4c3a8)

#
#
#
#

### Objetivo

Observe a tabela não normalizada de uma locadora de veículos e aplique a 3ª Forma normal;
Faça o modelo lógico de banco de dados relacional;
Escreva o script que cria as tabelas;
Crie uma view que seleciona todas as locações e seus respectivos veículos e clientes.

#
#
#
#

# Codigo:

```SQL

CREATE TABLE Locacao (
  CodLocacao INT NOT NULL auto_increment,
  Veiculo VARCHAR(50) NOT NULL,
  Cor VARCHAR(20) NOT NULL,
  Placa VARCHAR(10) NOT NULL,
  Diaria DECIMAL(5,2) NOT NULL,
  Cliente VARCHAR(50) NOT NULL,
  CPF VARCHAR(11) NOT NULL,
  Nascimento DATE NOT NULL,
  Dias INT NOT NULL,
  Total DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (CodLocacao)
);

```

#
#
#
#

# Etapa 1: Primeira Forma Normal (1FN):

Uma tabela está na 1FN se todos os seus atributos
contêm valores atômicos, ou seja, valores indivisíveis. Além disso, a tabela deve ter uma
chave primária única que identifica exclusivamente cada linha

![image](https://github.com/RaFFaRaFFaR/Loca-o-de-Autom-veis-NORMALIZA-O-/assets/127689567/244cac27-c9c7-4cfe-a06b-213c43f41199)


#
#

# Etapa 2: Segunda Forma Normal (2FN): 

Uma tabela está na 2FN se estiver na 1FN e se todos os
atributos não chaves dependem completamente da chave primária. Isso elimina a
redundância parcial de dados

#
#
``` SQL
CREATE TABLE Locacao1 (
  CodLocacao INT NOT NULL auto_increment,
  Veiculo VARCHAR(50) NOT NULL,
  Cor VARCHAR(20) NOT NULL,
  Placa VARCHAR(10) NOT NULL,
  Diaria DECIMAL(5,2) NOT NULL,
  Dias INT NOT NULL,
  Total DECIMAL(10,2) NOT NULL,
  CPF VARCHAR(11) NOT NULL, -- Adicionando chave estrangeira
  PRIMARY KEY (CodLocacao),
  FOREIGN KEY (CPF) REFERENCES Cliente (CPF)
);

```
#
#

![image](https://github.com/RaFFaRaFFaR/Loca-o-de-Autom-veis-NORMALIZA-O-/assets/127689567/463ed1f6-e098-42ec-823a-a4b953a56392)
#
#

``` SQL
CREATE TABLE Cliente (
  CPF VARCHAR(11) PRIMARY KEY,
  Nome VARCHAR(50) NOT NULL,
  Nascimento DATE NOT NULL
);

```
#
#
![image](https://github.com/RaFFaRaFFaR/Loca-o-de-Autom-veis-NORMALIZA-O-/assets/127689567/73961323-c310-4ea0-a0a9-b2d356c669ca)



#
#


# Etapa 3: Terceira Forma Normal (3FN): 

Uma tabela está na 3FN se estiver na 2FN e se não
houver dependências transitivas entre os atributos não chaves. Isso elimina a redundância
transitiva de dados


``` SQL
	CREATE TABLE Cliente (
	  CPF VARCHAR(11) PRIMARY KEY,
	  Nome VARCHAR(50) NOT NULL,
	  Nascimento DATE NOT NULL
	);


```
![image](https://github.com/RaFFaRaFFaR/Loca-o-de-Autom-veis-NORMALIZA-O-/assets/127689567/b9b83015-4db3-4ba8-971f-cf5a183ed41d)


``` SQL

CREATE TABLE Locacao (
	  CodLocacao INT NOT NULL auto_increment,
	  Veiculo VARCHAR(50) NOT NULL,
	  Cor VARCHAR(20) NOT NULL,
	  Placa VARCHAR(10) NOT NULL,
	  Diaria DECIMAL(5,2) NOT NULL,
	  CPF VARCHAR(11) NOT NULL,
	  Dias INT NOT NULL,
	  PRIMARY KEY (CodLocacao),
	  FOREIGN KEY (CPF) REFERENCES Cliente (CPF)
	);


```

![image](https://github.com/RaFFaRaFFaR/Loca-o-de-Autom-veis-NORMALIZA-O-/assets/127689567/93987c86-788d-4f20-b03d-a64cd1cce972)

#
#
#
#
#
# OBRIGADO!



![logo-maker-featuring-aliens-and-robots-2367-el1](https://github.com/bancos-de-dados/Com-rcio-Eletr-nico/assets/127689567/96d142cd-2b5c-409d-9ba1-ce5a2a665972)
