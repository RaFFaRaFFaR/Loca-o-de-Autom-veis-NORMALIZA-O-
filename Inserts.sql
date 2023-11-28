-- Inserir dados na tabela Locacao com CPF ajustado
SET IDENTITY_INSERT Locacao ON;

INSERT INTO Locacao (CodLocacao, Veiculo, Cor, Placa, Diaria, Cliente, CPF, Nascimento, Dias, Total)
VALUES 
  (DEFAULT, 'Fusca', 'Preto', 'WER-3456', 30.00, 'Ariano Suassuna', '12345678901', '1022-05-21', 3, 90.00),
  (DEFAULT, 'Variante', 'Rosa', 'FDS-8384', 60.00, 'Grace Hopper', '54376598723', '2022-04-15', 5, 420.00),
  (DEFAULT, 'Comodoro', 'Prato', 'CVB-9933', 20.00, 'Richard Feynman', '98765423190', '2001-10-12', 7, 20.00),
  (DEFAULT, 'Deloriam', 'Azul', 'FGH-2256', 80.00, 'Edgar Poe', '43276567867', '1998-12-14', 10, 240.00),
  (DEFAULT, 'Brasília', 'Amarela', 'DDI-3948', 45.00, 'Gordon Freeman', '92738428444', '1984-11-26', 15, 315.00);

INSERT INTO Cliente (CPF, Nome, Nascimento)
VALUES
  ('12345678901', 'Ariano Suassuna', '1022-05-21'),
  ('54376598723', 'Grace Hopper', '2022-04-15'),
  ('98765423190', 'Richard Feynman', '2001-10-12'),
  ('43276567867', 'Edgar Poe', '1998-12-14'),
  ('92738428444', 'Gordon Freeman', '1984-11-26');

INSERT INTO Locacao1 (CodLocacao, Veiculo, Cor, Placa, Diaria, Dias, Total, CPF)
VALUES
  (DEFAULT, 'Fusca', 'Preto', 'WER-3456', 30.00, 3, 90.00, '12345678901'),
  (DEFAULT, 'Variante', 'Rosa', 'FDS-8384', 60.00, 5, 420.00, '54376598723'),
  (DEFAULT, 'Comodoro', 'Prato', 'CVB-9933', 20.00, 7, 20.00, '98765423190'),
  (DEFAULT, 'Deloriam', 'Azul', 'FGH-2256', 80.00, 10, 240.00, '43276567867'),
  (DEFAULT, 'Brasília', 'Amarela', 'DDI-3948', 45.00, 15, 315.00, '92738428444');


-- Inserção na tabela Cliente
INSERT INTO Cliente (CPF, Nome, Nascimento)
VALUES
  ('12345678901', 'Ariano Suassuna', '1022-05-21'),
  ('54376598723', 'Grace Hopper', '2022-04-15'),
  ('98765423190', 'Richard Feynman', '2001-10-12'),
  ('43276567867', 'Edgar Poe', '1998-12-14'),
  ('92738428444', 'Gordon Freeman', '1984-11-26');

-- Inserção na tabela Locacao
INSERT INTO Locacao (Veiculo, Cor, Placa, Diaria, CPF, Dias)
VALUES
  ('Fusca', 'Preto', 'WER-3456', 30.00, '12345678901', 3),
  ('Variante', 'Rosa', 'FDS-8384', 60.00, '54376598723', 5),
  ('Comodoro', 'Prato', 'CVB-9933', 20.00, '98765423190', 7),
  ('Deloriam', 'Azul', 'FGH-2256', 80.00, '43276567867', 10),
  ('Brasília', 'Amarela', 'DDI-3948', 45.00, '92738428444', 15);

