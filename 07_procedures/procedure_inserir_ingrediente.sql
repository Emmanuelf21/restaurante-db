/*procedure para inserir um novo ingrediente no estoque*/
DELIMITER $
CREATE PROCEDURE inserir_ingrediente(nome_ingrediente varchar(100), quantidade varchar(11))
	BEGIN
		insert into estoque_ingredientes values(null,nome_ingrediente, quantidade);
    END $
DELIMITER ;