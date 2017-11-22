# Introduction DSM

Ce projet sert d'introduction aux _Dependency Structure Matrix_ (DSM).  
Il s'agit d'une application Java qui permet de faire
divers calculs associ�s � un emprunt dans une institution financi�re.
L'application de d�part et sa documentation se trouvent au
[https://sourceforge.net/projects/jbiloan/]().

Le code source de d�part a �t� converti en projet Maven. Aucune autre modification
n'a �t� apport�e au projet d'origine.
  
## Pr�-requis 

L'exemple tel que livr� ici est presque autonome. Les seuls pr�requis sont que:

* un compilateur java doit �tre sur le chemin d'acc�s ("path");
* l'outil Maven doit �tre sur le chemin d'acc�s ("path").


## Particularit�s de l'exemple
Bien que vous puissiez manipuler l'exemple dans votre IDE favori, il est 
aussi possible de le compiler et l'ex�cuter � la ligne de commande. La compilation
est r�alis�e via Apache Maven. Un script de compilation [pom.xml](./pom.xml) est
fourni. **Une connexion Internet est requise pour compiler l'exemple** (au moins
la premi�re fois sur un ordinateur donn�).

## Compilation de l'exemple

* ouvrir une coquille ("shell": DOS, bash, ...) sur votre plate-forme pr�f�r�e;
* se d�placer � l'endroit o� se trouve le fichier pom.xml dans cette archive (en principe au m�me niveau que les pr�sentes directives);
* lancer `mvn package` (par d�faut, l'ensemble du code java est compil� et une archive JAR est cr��e).
 
## Ex�cution de l'exemple

Il y a trois options possibles pour ex�cuter ce syst�me:

1. Dans le m�me coquille que pour la compilation, lancer `mvn exec:java`
2. Dans le m�me coquille que pour la compilation, se d�placer dans le r�pertoire o� sont stock�es les classes compil�es avec la commande `cdtarget/classes`, et lancer `java loanmain.JbiLoan`
3. Dans un explorateur de fichier, se d�placer dans le r�pertoire `target` et double-cliquer sur `jbiloan-1.0.0.jar`

## Documentation du projet

1. Dans le m�me coquille que pour la compilation, lancer `mvn site`. Un site web de projet est g�n�r� dans le r�pertoire `target/site`.
2. Ouvrir le fichier [index.html](./target/site/index.html). Consulter la section "Project reports" tout en bas. Cette section contient deux sources de documentation int�ressantes:
  1. la documentation javadoc du projet;
  2. une matrice de d�pendances (DSM) du projet complet. Voir les ressources plus bas pour comprendre ce qu'est une DSM et savoir comment l'interpr�ter.

## Ressources utiles

* [Page wikipedia sur les DSM](https://en.wikipedia.org/wiki/Design_structure_matrix)
* [Documentation du dsm-maven-plugin](https://github.com/sevntu-checkstyle/dsm-maven-plugin)
* [Vid�o explicative sur comment lire une DSM](https://www.youtube.com/watch?v=4cL4xoy7cMc&list=PLLNGJX9z7bBrKL5Q2t74qaonX6nTPaj2s)
* [Intellij IDEA DSM tool window](https://www.jetbrains.com/help/idea/dsm-tool-window.html)
* [Intellij IDEA dependency viewer](https://www.jetbrains.com/help/idea/dependency-viewer.html)
* [Explications sur les DSM par Ndepend](https://www.ndepend.com/docs/dependency-structure-matrix-dsm)

Par Roger Champagne, P.Eng, Ph.D.
�cole de technologie sup�rieure
M�J 2017-Nov-22