# BreizhOS

## Catégories
- Reverse

## Description
Dans ce challenge, vous allez goûter à la crème de la crème de la signature Bretonne ! Un OS maison, spécialement concu pour l'occasion, implémente un système de signature avec une clé secrète. Saurez-vous la récupérer ? Afin de résoudre ce challenge, vous allez devoir construire un ELF et l'envoyer sur notre instance de BreizhOS. Nous lançerons ce binaire avec un utilisateur standard en vous renvoyant seulement ce qui est reçu sur la liaison série de l'émulateur. Plongez vous dans les link-scripts et le code source pour comprendre comment fonctionne l'OS. Vous trouverez un hello_world fonctionnel dans le dossier user.

## Documentation admin
Les prérequis sont :
- un rust récent, et en version nightly (testé avec 1.68.0-nightly). Pour installer rust, utilisez [rustup](https://rustup.rs/), c'est officiel et plus simple. Pour passer rust en nightly, vous pouvez executer `rustup default nightly`.
- un qemu-system-x86_64 (`apt-get install qemu` doit suffir).
- une chaine de compilation (`apt-get install build-essential make nasm`)

Vous pouvez distribuer le dossier [breizhOS](../breizhOS/), **après avoir changé les valeurs des deux variables dans le fichier [secret.rs](../breizhOS/kernel/src/secret.rs)** (pas de contrainte particulière pour le flag, et l'entier doit être sur un nombre de bits entre 58 et 64)

Pour lancer breizhOS, il vous faut récupérer l'ELF de l'utilisateur et ensuite lancer le script [run.sh](./run.sh) comme suit : `./run.sh <path_absolu_auquel_trouver_le_elf_a_run> 2> /dev/null # Enlevez la redirection si vous souhaitez voir tous les logs, pour debug par exemple`.

Pour tester le bon fonctionnement du chall, lancez le comme suit : 
```bash
./run.sh $(/usr/bin/realpath user_prog_which_works) 2> /dev/null
```
Vous devez voir à la fin de l'éxecution le flag.

## Indices
- Nos amis les chinois savent résoudre ça...