insert into Estoque_Ingredientes (ingrediente_nome, ingrediente_qtd)
values 	('Sem Ingrediente', 0),
		('Alface Americana', 999),
        ('Peito de Frango', 999),
        ('Croutons', 999),
        ('Parmesão Ralado', 999),
        ('Molho Caesar', 999),
        ('Alface Crespa', 999),
        ('Tomate', 999),
        ('Cebola', 999),
        ('Pepino', 999),
        ('Azeite', 999),
        ('Peito de Peru', 999),
        ('Rúcula', 999),
        ('Pão de Forma', 999),
        ('Ricota', 999),
        ('Peça Tomahawk', 999),
        ('Pimenta do Reino', 999),
        ('Sal', 999),
        ('Alho', 999),
        ('Ervas Finas', 999),
        ('Molho de Tomate', 999),
        ('Manjericão', 999),
        ('Salmão', 999),
        ('Limão', 999),
        ('Batata', 999),
        ('Mandioca', 999),
        ('Farinha de Trigo', 999),
        ('Ovo', 999),
        ('Orégano', 999),
        ('Farinha de Rosca', 999),
        ('Leite', 999),
        ('Brócolis', 999),
        ('Couve-Flor', 999),
        ('Manteiga', 999),
        ('Leite Condensado', 999),
        ('Creme de Leite', 999),
        ('Chocolate', 999),
        ('Morango', 999),
        ('Maracujá', 999),
        ('Gelatina de Uva', 999),
        ('Uva', 999),
        ('Água', 999),
        ('Suco de Laranja', 999),
        ('Refrigerante de Cola', 999);
select * from estoque_ingredientes;
        
insert into mesa (mesa_numero, mesa_lugares)
values 	('1', '2'),
		('2', '2'),
		('3', '4'),
		('4', '4'),
		('5', '4'),
		('6', '4'),
		('7', '4'),
		('8', '4'),
		('9', '6'),
		('10', '6'),
        ('11', '8'),
        ('12', '8');
select * from mesa;

insert into cargo (cargo_nome, cargo_salario)
values 	('Atendente', 1500.00),
		('Garçom', 1500.00),
        ('Chefe de Cozinha', 3000.00),
        ('Gerente', 6000.00);
select * from cargo;

insert into funcionarios (funcionario_nome, funcionario_cpf, fk_idcargo)
values 	('Lucas', '12345678900', 1),
		('Mariana', '12345678911', 1),
        ('Pedro', '12345678922', 2),
        ('Sofia', '12345678933', 2),
        ('Laura', '12345678944', 2),
        ('João', '12345678955', 3),
        ('Beatriz', '12345678966', 3),
        ('Gabriel', '12345678977', 4);
select * from funcionarios;

insert into entrada (entrada_nome, entrada_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7)
values ('Salada Caesar', 35.00, 2, 3, 4, 5, 6, 1, 1);
select * from entrada;

insert into prato_principal (principal_nome, principal_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7)
values ('Tomahawk Steak', 199.99, 16, 17, 18, 19, 11, 20, 1);
select * from prato_principal;

insert into guarnicao (guarnicao_nome, guarnicao_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7)
values ('Mix de Tubérculos', 17.50, 25, 26, 18, 20, 1, 1, 1);
select * from guarnicao;

insert into sobremesa (sobremesa_nome, sobremesa_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7)
values ('Bombom de Morango', 22.99, 35, 34, 36, 37, 38, 1, 1);
select * from sobremesa;

insert into bebidas (bebida_nome, bebida_preco, fk_idingrediente)
values ('Água', 7.00, 42);
select * from bebidas;