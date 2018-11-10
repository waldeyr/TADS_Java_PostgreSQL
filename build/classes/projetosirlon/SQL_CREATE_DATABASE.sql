
CREATE SEQUENCE public.idprodutoseq;

CREATE TABLE public.produto (
                idProduto INTEGER NOT NULL DEFAULT nextval('public.idprodutoseq'),
                nome VARCHAR NOT NULL,
                descricao VARCHAR NOT NULL,
                precocusto DOUBLE PRECISION NOT NULL,
                precovenda DOUBLE PRECISION NOT NULL,
                foto BYTEA NOT NULL,
                CONSTRAINT produto_id PRIMARY KEY (idProduto)
);


ALTER SEQUENCE public.idprodutoseq OWNED BY public.produto.idProduto;

CREATE TABLE public.pessoa (
                email VARCHAR NOT NULL,
                nome VARCHAR NOT NULL,
                senha VARCHAR NOT NULL,
                perfil VARCHAR NOT NULL,
                CONSTRAINT pessoa_id PRIMARY KEY (email)
);


CREATE SEQUENCE public.idcarrinhoseq;

CREATE TABLE public.carrinho (
                idCarrinho INTEGER NOT NULL DEFAULT nextval('public.idcarrinhoseq'),
                precofinal DOUBLE PRECISION NOT NULL,
                data DATE NOT NULL,
                status VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                CONSTRAINT carrinho_id PRIMARY KEY (idCarrinho)
);


ALTER SEQUENCE public.idcarrinhoseq OWNED BY public.carrinho.idCarrinho;

CREATE TABLE public.produto_carrinho (
                idProduto INTEGER NOT NULL,
                idCarrinho INTEGER NOT NULL,
                quantidade INTEGER NOT NULL
);


CREATE SEQUENCE public.idenderecoseq;

CREATE TABLE public.endereco (
                idEndereco INTEGER NOT NULL DEFAULT nextval('public.idenderecoseq'),
                pais VARCHAR NOT NULL,
                estado VARCHAR NOT NULL,
                cidade VARCHAR NOT NULL,
                logradouro VARCHAR NOT NULL,
                cep VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                CONSTRAINT endereco_id PRIMARY KEY (idEndereco)
);


ALTER SEQUENCE public.idenderecoseq OWNED BY public.endereco.idEndereco;

ALTER TABLE public.produto_carrinho ADD CONSTRAINT produto_produto_carrinho_fk
FOREIGN KEY (idProduto)
REFERENCES public.produto (idProduto)
ON DELETE RESTRICT
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.endereco ADD CONSTRAINT pessoa_endereco_fk
FOREIGN KEY (email)
REFERENCES public.pessoa (email)
ON DELETE RESTRICT
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.carrinho ADD CONSTRAINT pessoa_carrinho_fk
FOREIGN KEY (email)
REFERENCES public.pessoa (email)
ON DELETE RESTRICT
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.produto_carrinho ADD CONSTRAINT carrinho_produto_carrinho_fk
FOREIGN KEY (idCarrinho)
REFERENCES public.carrinho (idCarrinho)
ON DELETE RESTRICT
ON UPDATE NO ACTION
NOT DEFERRABLE;
