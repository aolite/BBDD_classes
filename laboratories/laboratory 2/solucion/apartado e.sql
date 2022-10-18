SELECT distinct av.nom
FROM avions av INNER JOIN assignats a on av.num_avio = a.num_avio
               INNER JOIN assignats a2 on (av.num_avio = a2.num_avio and a.data != a2.data)
               INNER JOIN vols v on v.num_vol = a.num_vol and v.num_vol = a2.num_vol
WHERE v.origen = 'Barcelona' and v.desti = 'Las Palmas'