SELECT Advogados.nome, Advogados.email, Carteira.numero, OAB.estado FROM Carteira
JOIN Advogados ON Advogados.advogado_id = Carteira.id_advogado
JOIN OAB ON OAB.oab_id = Carteira.id_oab
WHERE Carteira.data_emissao > '2023-02-01';
