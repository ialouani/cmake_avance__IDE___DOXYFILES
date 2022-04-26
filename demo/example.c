#include <string.h>
#include <stdio.h>
//#include <stdlib.h>
#include<stdlib.h>
#include "hash.h"


int str_hash(unsigned char *str)
{
  int hash = 5381;
  int c;
  
  while ((c = *str++)!='\0')
    hash = ((hash << 5) + hash) + c; 
  
  return hash;
}

/*!
 * \brief main main program
 * \param argc program argument counter
 * \param argv array of arguments
 * \return 0 if everything ok
 */


int main(){
  struct hash_Table *hash=hash_init((void *)strcmp,(void *)str_hash);
  //printf("add toto %d \n",hash_add(NULL,"toto"));(pour travailler sur le TD5)
  //depuis la sortie incrementee sans versionnage du TD1). ..///
  printf("add toto %d \n",hash_add(hash,"toto"));
  printf("add titi %d \n",hash_add(hash,"titi"));
  printf("ajout titi %d \n",hash_add(hash,"titi"));
  printf("toto => %d\n",hash_cherche(hash,"toto"));
  printf("titi => %d\n",hash_cherche(hash,"titi"));
  printf("tbtb => %d\n",hash_cherche(hash,"tbtb"));
  hash_free(hash,NULL);
  return 0;//exit_success nn car depuis stdlib(1) et inutile (code minimale
  //systeme TDD).
}
