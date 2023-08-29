-- Criando banco de dados com nome "Empresa".
CREATE DATABASE Empresa;

-- Selecionando banco de dados para inserir comandos.
USE Empresa;

CREATE TABLE Clientes (
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telefone VARCHAR(22) NOT NULL,
    Id_Endereco INT,
    FOREIGN KEY(Id_Endereco) REFERENCES Enderecos(Id)
);

CREATE TABLE Enderecos(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Logradouro VARCHAR(255) NOT NULL,
    Cep VARCHAR(11) NOT NULL,
    Numero VARCHAR(5),
    Complemento TEXT,
	Cidade VARCHAR(255) NOT NULL
   
);

