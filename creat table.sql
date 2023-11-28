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


CREATE TABLE Cliente (
  CPF VARCHAR(11) PRIMARY KEY,
  Nome VARCHAR(50) NOT NULL,
  Nascimento DATE NOT NULL
);


	CREATE TABLE Cliente (
	  CPF VARCHAR(11) PRIMARY KEY,
	  Nome VARCHAR(50) NOT NULL,
	  Nascimento DATE NOT NULL
	);

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

