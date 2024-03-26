# TP réseau

## V1:
- Récupérer uniquement son IP et son adresse de broadcast de l'interface réseau principale.
```sh
ifconfig | grep -A1 en0 | tail -n 1 | cut -d ' ' -f2,4,6
```
- Calculer les IPs à contacter (10)
```txt
10.33.1.14  0xffff0000  10.33.255.255
IP courante netmask     IP de broadcast
netmask group par 2 => 10.33 figé et 1.14 variable => réseau 10.33.0.0
Range => réseau + 1 à broadcast - 1 => 10.33.0.1 à 10.33.255.254
```
```sh
# IPs joignables
echo 10.33.1.{14..16} | xargs -n 1 -I % ping -c 1 % | grep "64 bytes from" | cut -d ' ' -f 4 | cut -d ':' -f1
```
- Déterminer pour chaque IP joignable uniquement les ports disponibles
```sh
echo 10.33.1.{14..16} | xargs -I % sh -c "echo %  && nmap % | grep -E '^[0-9]'"
```

## V2:
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
1) Pouvoir exécuter le script sans spécifier l'utilitaire ex: `sh test.sh => ./test.sh`