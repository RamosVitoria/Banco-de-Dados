SELECT Advogados.nome Advogados,OAB.oab_id OAB FROM Carteira
JOIN Advogados ON Advogados.advogado_id = Carteira.id_advogado
JOIN OAB ON OAB.oab_id = Carteira.id_oab
WHERE OAB.estado = "SC";
