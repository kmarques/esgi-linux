1) Récupérer son ip local
2) À partir de son IP et de l'IP de broadcast déterminer les IPs à contacter
3) Tester l'ensemble des IPs (vérifier la communication)
4) Pour chaque IP contactée, déterminer les ports (et protocoles) ouverts
5) Afficher sous la forme :
```
Start scan
    X IPs trouvées [X étant le nombre]
    IP1
      - port1 => protocol1
      - port2 => protocol2
    IP2
      - port1 => protocol1
End scan (X)     [X étant le temps de scan total en H:m:s]
```
6) Pouvoir exécuter le script sans spécifier l'utilitaire ex: `sh test.sh => ./test.sh`