

/**********************************************************/
/* Obtenir el nom dels alumnes que han suspes EDALG       */
/**********************************************************/

SELECT a.idalumne, a.nom
FROM alumne a, notes n, assignatura ass
WHERE ass.nom='EDALG' AND ass.idassignatura=n.idassignatura AND
      n.nota<5 AND n.idalumne=a.idalumne;


/**********************************************************/
/* Obtenir el nom dels alumnes que han suspes EDALG i IBD */
/**********************************************************/

SELECT a.idalumne, a.nom
FROM alumne a, notes n1, notes n2, assignatura as1, assignatura as2
WHERE as1.nom='EDALG' AND as1.idassignatura=n1.idassignatura AND
      n1.nota<5 AND n1.idalumne=a.idalumne AND as2.nom='IBD' AND
      as2.idassignatura=n2.idassignatura AND n2.nota<5 AND
      n2.idalumne=a.idalumne;

