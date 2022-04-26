#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include "hash.h"

//#ifndef HASH_H
#define HASH_SIZE 13 // prime number
//#endif
//modularite (changer les fonctionnalitees sans toucher aux sources)

//double linked generic list
struct Cell {
  void *data;//plusieurs choses comme contenu des listes 
  //donc on peut pas le typer=>void*(polymorphe) pour designer Cell.data.
  struct Cell *next,*prev;
};//encodage de la liste chainee via cette structure.(doublement chainee)

//M-x replace string avec curseur tout en haut pour remplacer toutes
//les occurences d'elements voulus pour respecter la convention de nommage
//définie dans le fichier de type Markdown (modele de balises HTML)
//::README.md.

//main hash table.
struct hash_Table{
  int (*cmp)(void *,void *);
  int (*hash)(void *);
  struct Cell **entry;
  int size;
};

struct Cell *hash_newcell(void *data){
  struct Cell *c=malloc(sizeof(*c));
  c->data=data;
  c->next=c->prev=NULL;
  return c;
}

struct hash_Table *hash_init(int (*cmp)(void *,void *), int (*hash)(void *)){
  //arguments de type pointeurs de fonctions.
  //une fonction f et un main dans un meme fichier => meme zone
  //d'adressages du processus en cours comparant avec printf
  //qui se trouve dans une bibliotheque dynamique
  //qui est chargée à l'éxecution.(un lien est crée vers l'executable
  //.o contenant le symbole "printf" manquant)
  struct hash_Table *hasht;
  int i;
  assert(cmp!=NULL);
  assert(hash!=NULL); 
  hasht = malloc(sizeof(*hasht));//remplacer les char par des short int
  //conserve la conherence par le sizeof(*HASHT).
  //query-replace.(pour respecter la convention de nommage)
  if (hasht==NULL) return NULL;
  hasht->cmp=cmp;
  hasht->hash=hash;
  hasht->entry=malloc(sizeof(*(hasht->entry))*HASH_SIZE);
  if (hasht->entry==NULL){
    free(hasht);
    return NULL;
  }
  hasht->size=HASH_SIZE;
  for(i=0;i<hasht->size;++i) hasht->entry[i]=NULL;
  return hasht;
}

int hash_add(struct hash_Table *hash,void *data){
  int value;
  int c;
  struct Cell *cell=hash_newcell(data);
  assert(hash!=NULL);
  value=hash->hash(data);  
  fprintf(stderr,"DEBUG: hash value is %d \n",value);
  if (hash->entry[value%hash->size]==NULL){
    hash->entry[value%hash->size]=cell;
  } else {
    struct Cell *q=NULL,*p=hash->entry[value%hash->size];
    while((p!=NULL) && ((c=hash->cmp(data,p->data))>0)){
      q=p;
      p=p->next;    
    }
    if (c==0)
	return 1; // element is already in the table
    if (q==NULL){
      p->prev=cell; cell->next=p;
      hash->entry[value%hash->size]=cell;
    }else{
      q->next = cell; cell->prev=q;
    } 
  }
  return 0;
}

int hash_cherche(struct hash_Table *hash,void *data){
  int r=1,value;
  assert(hash!=NULL);
  value=hash->hash(data);  
  struct Cell *p=hash->entry[value%hash->size];
  while((p!=NULL) && (r=hash->cmp(data,p->data)<0))
    p=p->next;
  if (r==0) return 0;
  if (p==NULL) return 1;
  return 1;
}

void hash_free(struct hash_Table *hash, void (*release)(void *)){
  int i;
  assert(hash!=NULL);
  for(i=0;i<hash->size;++i){
    struct Cell *p=hash->entry[i];
    if (p==NULL) continue;
    while(p->next!=NULL){
      p=p->next;
      if (release!=NULL)
	release(p->prev->data);
      free(p->prev);
    }
  }
  free(hash->entry);
  free(hash);    
}


