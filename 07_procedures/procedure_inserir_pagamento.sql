/*inserir pagamento*/
DELIMITER $
CREATE PROCEDURE inserir_pagamento(idpedidos int, idcliente int)
	BEGIN
		set @varPagar = (select pagamento_total(idpedidos) as "pagamento");
		insert into pagamento values(null, @varPagar, idpedidos, idcliente);
    END $
DELIMITER ;