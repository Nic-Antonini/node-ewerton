USE bd_aula_node;

ALTER TABLE PRODUTOS ADD CONSTRAINT PRODUTOS_fk0 FOREIGN KEY (ptp_id) REFERENCES PRODUTO_TIPOS(ptp_id);

ALTER TABLE PEDIDOS ADD CONSTRAINT PEDIDOS_fk0 FOREIGN KEY (usu_id) REFERENCES USUARIOS(usu_id);

ALTER TABLE PEDIDOS ADD CONSTRAINT PEDIDOS_fk1 FOREIGN KEY (end_id) REFERENCES ENDERECO_CLIENTES(end_id);

ALTER TABLE PEDIDO_PRODUTOS ADD CONSTRAINT PEDIDO_PRODUTOS_fk0 FOREIGN KEY (ped_id) REFERENCES PEDIDOS(ped_id);

ALTER TABLE PEDIDO_PRODUTOS ADD CONSTRAINT PEDIDO_PRODUTOS_fk1 FOREIGN KEY (prd_id) REFERENCES PRODUTOS(prd_id);

ALTER TABLE CLIENTES ADD CONSTRAINT CLIENTES_fk0 FOREIGN KEY (usu_id) REFERENCES USUARIOS(usu_id);

ALTER TABLE ENDERECO_CLIENTES ADD CONSTRAINT ENDERECO_CLIENTES_fk0 FOREIGN KEY (usu_id) REFERENCES CLIENTES(usu_id);

ALTER TABLE ENDERECO_CLIENTES ADD CONSTRAINT ENDERECO_CLIENTES_fk1 FOREIGN KEY (cid_id) REFERENCES CIDADES(cid_id);

ALTER TABLE MESAS ADD CONSTRAINT MESAS_fk0 FOREIGN KEY (ped_id) REFERENCES PEDIDOS(ped_id);

ALTER TABLE PRODUTO_INGREDIENTES ADD CONSTRAINT PRODUTO_INGREDIENTES_fk0 FOREIGN KEY (prd_id) REFERENCES PRODUTOS(prd_id);

ALTER TABLE PRODUTO_INGREDIENTES ADD CONSTRAINT PRODUTO_INGREDIENTES_fk1 FOREIGN KEY (ing_id) REFERENCES INGREDIENTES(ing_id);
