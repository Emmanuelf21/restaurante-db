# restaurante-db
- Banco de Dados demonstrando o funcionamento de um restaurante

## Imagens do modelo Conceitual 🖥
![modelo-conceitual-1](https://github.com/Emmanuelf21/restaurante-db/blob/main/01_modelo_conceitual/modelo-conceitual-1.PNG)
![modelo-conceitual-2](https://github.com/Emmanuelf21/restaurante-db/blob/main/01_modelo_conceitual/modelo-conceitual-2.PNG)

## Imagem do modelo Lógico 🖥
![modelo-logico-1](https://github.com/Emmanuelf21/restaurante-db/blob/main/02_modelo_logico/modelo-logico-1.PNG)

## Criando o database
 - Na pasta <09_dump> existem alguns arquivos para import
 - No MySQL vá em server > data import e selecione a checkbox 'Import from Dump Project Folder' e selecione a pasta <09_dump>
 - Clique em 'start import' para criar o database com as views, procedures e functions

![modelo-físico](https://github.com/Emmanuelf21/restaurante-db/blob/main/03_modelo_fisico/importar_db.PNG)

## Views e Procedures
- As Views são nomeadas da seguinte forma:
  -  view_pedidos: para visualizar todos os pedidos com o nome e preço de cada prato além do preço total;
  -  Views dos pratos: servem para visualizar os pratos de cada tabela (entrada, prato_principal, guarnição,etc) junto de seus ingredientes:
    -  view_entrada_ingredientes;
    -  view_principal_ingredientes;
    -  view_guarnicao_ingredientes;
    -  view_sobremesa_ingredientes;
    -  view_bebida_ingredientes;
- Procedures: servem para inserir novos dados nas tabelas dos pratos, clientes, pedidos e pagamento:
   -  inserir_bebida: recebe o ID da bebida, nome, preço e o ID do ingrediente no estoque;
   -  inserir_entrada: recebe o ID da entrada, nome, preço e os IDs de ingredientes no estoque <b>*total de 7 ingredientes*</b>;
   -  inserir_principal: recebe o ID do prato principal, nome, preço e os IDs de ingredientes no estoque <b>*total de 7 ingredientes*</b>;
   -  inserir_guarnicao: recebe o ID da guarnicao, nome, preço e os IDs de ingredientes no estoque <b>*total de 7 ingredientes*</b>;
   -  inserir_sobremesa: recebe o ID da sobremesa, nome, preço e os IDs de ingredientes no estoque <b>*total de 7 ingredientes*</b>;
   -  inserir_ingrediente: recebe o nome do ingrediente e quantidade;
   -  inserir_pedido: recebe os IDs de cada prato (entrada, prato_principal, guarnição,etc), ID do cliente e do funcionário que está encarregado do pedido;
   -  inserir_cliente: recebe nome, telefone e cpf;
   -  inserir_pagamento: <b>*pagamento é inserido automaticamente ao gerar um pedido*</b>

## Function
- O database possui uma function para a soma do valor total a ser pago pelo cliente:
  - pagamento_total: <b>*Esta function é chamada sempre que um pedido novo for inserido na tabela de pedidos*</b>
  
