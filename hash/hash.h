#ifndef HASH
#define HASH
struct Cell *hash_newcell(void *data);
struct hash_Table *hash_init(int (*cmp)(void *,void *), int (*hash)(void *));
int hash_add(struct hash_Table *hash,void *data);
int hash_cherche(struct hash_Table *hash,void *data);
void hash_free(struct hash_Table *hash, void (*release)(void *));
#endif
