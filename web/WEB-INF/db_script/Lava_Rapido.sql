
CREATE TABLE cliente (
 CPF varchar(11) NOT NULL PRIMARY KEY,
    Nome varchar(100)
);

CREATE TABLE veiculo (
Placa_veiculo varchar(7) NOT NULL PRIMARY KEY,
Tipo_veiculo varchar(5) NOT NULL,
Marca_veiculo varchar(2),
Modelo_veiculo varchar(20)
);

CREATE TABLE servico (
Tipo_servico varchar(50) NOT NULL PRIMARY KEY,
Valor int
);

INSERT INTO cliente
VALUES ('12345678901', 'guilherme');