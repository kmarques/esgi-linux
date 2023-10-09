# Exercices Linux (Globbing/File system)

## Exercice 1
**(libre) Créer un dossier test contenant trois fichiers test1 toto titi**

```shell
mkdir test
touch test/test1 test/toto test/titi
```

## Exercice 2
**(libre) Créer un dossier test2 contenant un dossier test21 et test22, le dossier test21 doit contenir un dossier test211 contenant lui-même un fichier test211-1**

```shell
mkdir -p test2/test21/test211 test2/test22
touch test2/test21/test211/test211-1
````

## Exercice 3
**Même question 1 mais en 2 lignes de commandes (voir 1 ligne)**

```shell
mkdir test && touch test/{test1,toto,titi}
```

## Exercice 4
**Même question 2 mais en 2 lignes de commandes (voir 1 ligne)**

```shell
mkdir -p test2/test2{1/test211,2} && touch test2/test21/test211/test211-1
```

## Exercice 5
**Créer une arborescence dans un dossier test3 contenant 100 dossiers nommés xxx-test contenant eux-mêmes 50 sous-dossiers nommés "xxx subtest"**

```shell
mkdir -p test3/{00..99}-test/{00..49}\ subtest
```
