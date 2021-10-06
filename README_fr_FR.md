English | [中文简体](./README_zh_CN.md) | [Français](./README_fr_FR.md)

# Reverse Engineer's Toolkit

## Quoi ?

Il s'agit d'une collection d'outils qui pourraient vous intéresser si vous vous consacrez à la rétro-ingénierie et/ou à l'analyse des logiciels malveillants sur les systèmes Windows x86 et x64. Après avoir installé ce programme, vous devrez obtenir plusieurs moyens d'accéder aux outils :

* Double-clic sur l'icône `retoolkit` présent sur le Bureau.
* Clic droit sur un fichier, choisissez `Envoyer vers -> retoolkit`. De cette manière, le fichier sélectionné est transmis comme argument au programme souhaité.

![](assets/retoolkit.gif)

## Pourquoi en ai-je besoin ?

Ce n'est pas le cas. Évidemment, vous pouvez télécharger ces outils depuis leur propre site Web et les installer vous-même dans une nouvelle VM. Mais si vous téléchargez retoolkit, cela peut probablement vous faire gagner du temps. De plus, les outils sont livrés préconfigurés, vous trouverez donc des choses comme x64dbg avec quelques plugins, des outils en ligne de commande fonctionnant depuis n'importe quel répertoire, etc. Vous l'apprécierez sans doute si vous mettez en place une nouvelle VM d'analyse.

## Téléchargement

Les fichiers *.iss que vous voyez ici sont le code source de notre programme d'installation construit avec [Inno Setup](https://jrsoftware.org/isinfo.php). Pour télécharger le vrai programme, vous devez aller dans la section [Releases](https://github.com/mentebinaria/retoolkit/releases) et télécharger le programme d'installation.

## Outils intégrés

Venez jeter un oeil au [wiki](https://github.com/mentebinaria/retoolkit/wiki) pour obtenir une liste détaillée.

## Est-il sûr de l'installer dans mon environnement ?

Je ne sais pas. Certains outils inclus ne sont pas open source et proviennent d'endroits peu recommandables. Vous devez l'utiliser exclusivement dans des machines virtuelles et sous votre propre responsabilité.

## Pouvez-vous ajouter l'outil X ?

Cela dépend. L'idée est de rester simple. Nous n'ajouterons pas un outil simplement parce qu'il n'existe pas encore. Mais si vous pensez qu'il y a une bonne raison de le faire et que la licence nous permet de redistribuer le logiciel, veuillez [ouvrir une issue ici] (https://github.com/mentebinaria/retoolkit/issues?q=label%3Atool-request+) s'il n'existe pas encore.

## Historique des modifications

### 2021.10

* Yeah, nouveau système de numérotation des versions emprunté aux versions Ubuntu :)
* Réorganisation des outils d'analyse MSI sous la section des outils OLE.
* Mise à jour des outils actuels.
* Correction du PATH de pev.
* Correction du problème de licence SendTo+ (clos [#34](https://github.com/mentebinaria/retoolkit/issues/34)).
* Beaucoup de nouvelles fonctions ajoutées à la configuration du plugin SlothBP x64dbg.
* Ajout de nouvelles signatures DIE.
* Outils ajoutés :
    * Compilateur Dev-C++.
    * Environnement d'exécution Java 8, nécessaire pour les outils Java.
    * Python 3 (via WinPython), principalement pour supporter les outils basés sur Python.
    * XLMMacroDeobfuscator.
    * dnSpyEx (nouveau, fork dnSpy maintenu).  
    * oledump.
    * oletools (clos [#33](https://github.com/mentebinaria/retoolkit/issues/33)).
    * pdfid.py.
    * pdf-parser.py
    * Module MapoAnalyzer pour x64dbg.
    * Module xSelectBlock pour x64dbg.
    * redresser.
    * hollows_hunter.
    * HyperDbg.
    * Threadtear.
    * 1768.py.
    * CobaltStrikeScan.
    * dex2jar.

### v2021d

* Ajout de JADX.
* Meilleure organisation basée sur le type de fichier cible.
* Nouveau menu contextuel (clic droit sur un fichier -> Envoyer vers -> retoolkit).
* Suppression des raccourcis du menu Démarrer.
* Outils mis à jour à la dernière version.
* Mise à jour de l'outil Error Lookup pour un outil plus complet, avec plus de fonctionnalités.
* fasm ouvre maintenant les fichiers .asm si vous double-cliquez dessus.

### v2021c
* Première version publique.
