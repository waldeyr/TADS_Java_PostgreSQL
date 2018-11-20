INSERT iNTO public.pessoa (nome, email, senha, perfil) VALUES ('Luiz', 'Luiz@gmail.com', 'asdf', 'loiro');
INSERT iNTO public.pessoa (nome, email, senha, perfil) VALUES ('Maria', 'maria@gmail.com', 'cvbn', 'morena');
INSERT iNTO public.pessoa (nome, email, senha, perfil) VALUES ('Ana', 'ana@gmail.com', 'qwer', 'ruiva');
INSERT iNTO public.pessoa (nome, email, senha, perfil) VALUES ('Paulo', 'paulo@gmail.com', 'poiu', 'indio');


INSERT INTO public.endereco (pais, estado, cidade, logradouro, cep, email) 
VALUES ('Brasil', 'Goiás', 'Formosa', 'Rua A', '70000000', 'Luiz@gmail.com');

INSERT INTO public.endereco (pais, estado, cidade, logradouro, cep, email) 
VALUES ('Brasil', 'Goiás', 'Formosa', 'Rua B', '70000000', 'maria@gmail.com');

INSERT INTO public.endereco (pais, estado, cidade, logradouro, cep, email) 
VALUES ('Brasil', 'Goiás', 'Formosa', 'Rua C', '70000000', 'ana@gmail.com');

INSERT INTO public.endereco (pais, estado, cidade, logradouro, cep, email) 
VALUES ('Brasil', 'Goiás', 'Formosa', 'Rua D', '70000000', 'paulo@gmail.com');


INSERT iNTO public.produto (nome, descricao, precocusto, precovenda, foto) 
VALUES ( 'celular A', 'AAAA', '900', '1500', 'biVBORw0KGgoAAAANSUhEUgAAASwAAAGDC');
INSERT iNTO public.produto (nome, descricao, precocusto, precovenda, foto)
VALUES ( 'celular B', 'BBBB', '800', '1400', 'iVBORw0KGgoAAAANSUhEUgAAASwAAAGDC');
INSERT iNTO public.produto (nome, descricao, precocusto, precovenda, foto)
VALUES ( 'celular C', 'CCCC', '700', '1300', 'iVBORw0KGgoAAAANSUhEUgAAASwAAAGDC');
INSERT iNTO public.produto (nome, descricao, precocusto, precovenda, foto)
 VALUES ( 'celular D', 'DDDD', '600', '1200', 'iVBORw0KGgoAAAANSUhEUgAAASwAAAGDC');


 INSERT iNTO public.carrinho (precofinal, data, status, email) VALUES ('0.0','2018-11-20', 'pendente', 'ana@gmail.com');


INSERT INTO public.produto_carrinho (idProduto, idCarrinho, quantidade)
VALUES ('3', '1', '2')

INSERT INTO public.produto_carrinho (idProduto, idCarrinho, quantidade)
VALUES ('2', '1', '1')


SELECT (pp.precovenda * ppc.quantidade) AS parcial FROM
public.produto pp INNER JOIN  public.produto_carrinho ppc ON pp.idProduto= ppc.idProduto
WHERE pp.idProduto = 3
--2800


SELECT (pp.precovenda * ppc.quantidade) AS parcial FROM
public.produto pp INNER JOIN  public.produto_carrinho ppc ON pp.idProduto= ppc.idProduto
WHERE pp.idProduto = 2
--1500


UPDATE public.carrinho SET precofinal = '4300' WHERE public.carrinho.idCarrinho = 1

UPDATE public.carrinho SET status = 'efetivado' WHERE public.carrinho.idCarrinho = 1




