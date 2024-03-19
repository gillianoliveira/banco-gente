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