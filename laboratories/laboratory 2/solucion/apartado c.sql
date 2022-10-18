SELECT av.*
FROM avions av INNER JOIN autoritzats a2 on av.num_avio = a2.num_avio
               INNER JOIN pilots p on p.nss = a2.nss
WHERE p.edat >= 45 and av.num_avio NOT IN (
    SELECT ass.num_avio
    FROM assignats ass
    WHERE ass.data = '2022-09-22')