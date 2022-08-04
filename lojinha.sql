create database lojinha;

select * from categorias;
select * from produtos;
select * from usuarios;
select * from compras_usuario;

-- cadastro de categorias
INSERT INTO categorias(categoria) VALUES('eletronico')
INSERT INTO categorias(categoria) VALUES('papelaria')
INSERT INTO categorias(categoria) VALUES('brinquedo')
INSERT INTO categorias(categoria) VALUES('cd_filme')
INSERT INTO categorias(categoria) VALUES('videogames')
INSERT INTO categorias(categoria) VALUES('celulares')


-- cadastro de produtos
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('teclado', '50', 'teclado abnt', '1')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('monitor', '250', 'monitor lcd', '1')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('borracha', '0.85', 'borracha', '2')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('caneta', '3000', 'caneta bic', '2')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('amoeba', '5', 'geleia para brincar', '3')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('filme jurassic park 3', '30', 'terceiro filme dos dinossauros', '4')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('filme avatar', '35', 'um dos mais assistidos', '4')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('play station 5', '5000', 'videogame sony', '5')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('xbox series x', '3500', 'videogame microsoft', '5')
INSERT INTO produtos(nome, preço, descrição, categoria) VALUES('iphone', '3000', 'lançamento da apple', '6')

-- cadastro de clientes
INSERT INTO usuarios(nome,email) VALUES('Pablo', 'Pablo@hotmail.com')
INSERT INTO usuarios(nome,email) VALUES('Maria', 'Maria@hotmail.com')
INSERT INTO usuarios(nome,email) VALUES('Patricia', 'Patricia@hotmail.com')

-- inserir produtos no carrinho
INSERT INTO compras_usuario(id_compra,id_usuario_fez_a_compra, nome_usuario, id_produto, nome_produto, id_categoria, categoria_produto) VALUES(1, 1, 'Pablo', 8, 'play station 5', 5, 'videogame')
INSERT INTO compras_usuario(id_compra,id_usuario_fez_a_compra, nome_usuario, id_produto, nome_produto, id_categoria, categoria_produto) VALUES(2, 1, 'Pablo', 1, 'teclado', 1, 'eletronico')
INSERT INTO compras_usuario(id_compra,id_usuario_fez_a_compra, nome_usuario, id_produto, nome_produto, id_categoria, categoria_produto) VALUES(3, 2, 'Maria', 2, 'monitor', 1, 'eletronico')
INSERT INTO compras_usuario(id_compra,id_usuario_fez_a_compra, nome_usuario, id_produto, nome_produto, id_categoria, categoria_produto) VALUES(4, 3, 'Patricia', 9, 'iphone', 6, 'celulares')
INSERT INTO compras_usuario(id_compra,id_usuario_fez_a_compra, nome_usuario, id_produto, nome_produto, id_categoria, categoria_produto) VALUES(5, 1, 'Pablo', 4, 'caneta', 2, 'papelaria')
INSERT INTO compras_usuario(id_compra,id_usuario_fez_a_compra, nome_usuario, id_produto, nome_produto, id_categoria, categoria_produto) VALUES(6, 3, 'Patricia', 7, 'filme avatar', 4, 'cd_filme')
INSERT INTO compras_usuario(id_compra,id_usuario_fez_a_compra, nome_usuario, id_produto, nome_produto, id_categoria, categoria_produto) VALUES(7, 1, 'Pablo', 6, 'filme jurassic park 3', 4, 'cd_filme')

-- veficar carrinho de acordo com o id do usuario
SELECT nome_usuario, nome_produto, categoria_produto FROM compras_usuario WHERE id_usuario_fez_a_compra = 1