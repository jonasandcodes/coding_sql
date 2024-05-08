CREATE DATABASE dados_desenrola;

USE dados_desenrola;

CREATE TABLE dados(ID_OPERACAO_CONGLOMERADO ID SMALLINT PRIMARY KEY AUTO_INCREMENT,
					DATA_BASE DATE,
					FAIXA_DESENROLA TINYINT(1),
					UNIDADE_FEDERACAO VARCHAR(2),
					COD_CONGLOMERADO_FINANCEIRO INT,
					NOME_CONGLOMERADO_FINANCEIRO VARCHAR(100),
					NUMERO_OPERACOES INT,
					VOLUME_OPERACOES FLOAT);

load data infile 'dados_desenrola(1).csv' into table dados
fields terminated by ';'
ignore 1 lines;

/* criando uma tabela para carregar os dados do programa Desenrola
   - Para carregar os dados na tabela -> load data infile */


