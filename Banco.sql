--------------------------------------------------------------
-------------------------- VENDA ----------------------------
INSERT INTO tb_pedido (dt_pedido, nr_pedido, id_tipo_pedido, id_cliente, id_filial, vl_total_pedido) VALUES('2020/02/26', 33, 2, 3, 1, 30);

INSERT INTO tb_pedido_item (id_pedido, nr_pedido_item, id_produto, qt_item, vl_unitario) VALUES (2, 23, 10, 4, 7.5);

INSERT INTO tb_nf (id_tipo_operacao, id_status_nota, dt_emissao, nr_nota, id_cliente, id_filial, id_tipo_pagamento, vl_total_nota) VALUES (2, 3, '2020/02/26', 36, 3, 1, 2, 30);

INSERT INTO tb_pedido_nota VALUES (2, 1);

INSERT INTO tb_movimentacoes (id_nf, id_tipo_movimentacao, fl_processado, dt_movimentacao) VALUES (1, 2, 1, '2020/02/26');

UPDATE tb_estoque SET QT_ESTOQUE_DISPONIVEL = QT_ESTOQUE_DISPONIVEL -10 WHERE id_produto = 10 AND id_filial = 1;
--------------------------------------------------------------
-------------------------- COMPRA ----------------------------
INSERT INTO tb_pedido (dt_pedido, nr_pedido, id_tipo_pedido, id_fornecedor, id_filial, vl_total_pedido) VALUES('2020/02/25', 66, 1, 6, 1, 100);

INSERT INTO tb_pedido_item (id_pedido, nr_pedido_item, id_produto, qt_item, vl_unitario) VALUES (2, 46, 10, 4, 2);

INSERT INTO tb_nf (id_tipo_operacao, id_status_nota, dt_emissao, nr_nota, id_fornecedor, id_filial, id_tipo_pagamento, vl_total_nota) VALUES (1, 3, '2020/02/25', 36, 6, 1, 3, 30);

INSERT INTO tb_pedido_nota VALUES (3, 2);

INSERT INTO tb_movimentacoes (id_nf, id_tipo_movimentacao, fl_processado, dt_movimentacao) VALUES (2, 1, 1, '2020/02/25');

UPDATE tb_estoque SET QT_ESTOQUE_DISPONIVEL = QT_ESTOQUE_DISPONIVEL+50 WHERE id_produto = 10 AND id_filial = 1;