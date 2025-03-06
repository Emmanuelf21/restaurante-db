DELIMITER $
	CREATE FUNCTION pagamento_total(id_pedido int)
    returns decimal(10,2) deterministic
    BEGIN
		set @varBebida = (select bebida_preco from bebidas where idbebida = (select fk_idbebida from pedidos where idpedidos = id_pedido));
		set @varEntrada = (select entrada_preco from entrada where identrada = (select fk_identrada from pedidos where idpedidos = id_pedido));
		set @varPratoPrincipal = (select principal_preco from prato_principal where idprincipal = (select fk_idprincipal from pedidos where idpedidos = id_pedido));
		set @varGuarnicao = (select guarnicao_preco from guarnicao where idguarnicao = (select fk_idguarnicao from pedidos where idpedidos = id_pedido));
		set @varSobremesa = (select sobremesa_preco from sobremesa where idsobremesa = (select fk_idsobremesa from pedidos where idpedidos = id_pedido));
        
        set @varValorTotal = @varBebida + @varEntrada + @varPratoPrincipal + @varGuarnicao + @varSobremesa;
        return @varValorTotal;
    END $
DELIMITER ;


