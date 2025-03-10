/*Visualizar tabela de pedidos com todos os pratos, preços e valor total*/
CREATE VIEW view_pedidos as 
select idpedidos, entrada_nome, entrada_preco, principal_nome, principal_preco, guarnicao_nome, guarnicao_preco, 
sobremesa_nome, sobremesa_preco, bebida_nome, bebida_preco, pagamento_valor as 'Valor total'
from pedidos join entrada join prato_principal join guarnicao join sobremesa join bebidas join pagamento;
