SELECT v.nom, v.adresa
FROM viatgers v
WHERE v.dni NOT IN (
    SELECT b.dni
    FROM bitllets b
    WHERE b.data >= '2022-10-01' and b.data <= '2022-10-31'
)