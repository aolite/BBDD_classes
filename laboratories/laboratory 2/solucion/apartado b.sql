SELECT nom
FROM viatgers v INNER JOIN bitllets b on v.dni = b.dni
                INNER JOIN vols v2 on b.num_vol = v2.num_vol
WHERE v2.desti ='Londres' and b.data = '2022-09-22' and v2.hora_sortida>= '13:00'