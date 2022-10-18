SELECT p.nom
FROM pilots p INNER JOIN autoritzats a on p.nss = a.nss
              INNER JOIN avions a2 on a.num_avio = a2.num_avio
WHERE a2.capacitat > 100