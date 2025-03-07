/*Procedure para inserir os ids do pedido*/
DELIMITER $ 
CREATE PROCEDURE inserir_pedido(identrada int, idprincipal int, idguarnicao int, idsobremesa int,  idbebida int, idcliente int, idfuncionario int)
	BEGIN
		insert into pedidos values(null, idcliente, idfuncionario, identrada, idprincipal, idguarnicao, idsobremesa, idbebida);
        set @varIdPedido = (select idpedidos from pedidos where fk_idcliente = idcliente);
        call inserir_pagamento(@varIdPedido,idcliente);
    END $
DELIMITER ;

