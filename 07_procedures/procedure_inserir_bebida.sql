/*inserir novas bebidas*/
DELIMITER $
CREATE PROCEDURE inserir_bebida(idingrediente int, nome_bebida varchar(100), preco decimal(10,2))
	BEGIN
		insert into bebidas values(null, nome_bebida, preco, idingrediente);
    END $
DELIMITER ;