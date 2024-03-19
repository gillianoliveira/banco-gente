# Criação do schema
CREATE DATABASE IF NOT EXISTS db_banco_gente
       DEFAULT CHARSET = utf8mb4
	   DEFAULT COLLATE = utf8mb4_general_ci;

USE db_banco_gente;

CREATE TABLE IF NOT EXISTS tb_nossa_gente(
pk_id_nossa_gente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(180) NOT NULL,
sobrenome VARCHAR(180),
cpf VARCHAR(11) NOT NULL UNIQUE,
rg VARCHAR(10),
rg_uf CHAR(2),
rg_emissor VARCHAR(180),
rg_data_validade DATE,
rg_data_emissao DATE,
data_nascimento DATE,
nome_pai VARCHAR(180),
nome_mae VARCHAR(180),
naturalidade VARCHAR(80),
idioma_nativo VARCHAR(50),
estado_civil VARCHAR(15) # Solteiro, Casado, União Estável, Separado, Divorciado, Viúvo
);

CREATE TABLE IF NOT EXISTS tb_endereco(
pk_code_endereco INT AUTO_INCREMENT PRIMARY KEY,
logradouro VARCHAR(180),
numero VARCHAR(10),
complemento VARCHAR(180),
bairro VARCHAR(80),
cidade VARCHAR(80),
uf CHAR(2),
pais VARCHAR(50),
cep VARCHAR(8),
tipo VARCHAR(50), # casa, apartamento, fazenda, sítio, chácara, loteamento
fk_nossa_gente INT,
FOREIGN KEY(fk_nossa_gente) REFERENCES tb_nossa_gente(pk_id_nossa_gente)
);