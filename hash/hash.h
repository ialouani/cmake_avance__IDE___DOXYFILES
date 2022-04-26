#ifndef HASH
#define HASH


/*! 
 * \section Description générale
 * blablabla
 * \section Complexité
 * blablabla
 */

/*! 
 *\brief struct hash_Table
 */

struct hash_Table;

struct Cell *hash_newcell(void *data);
struct hash_Table *hash_init(int (*cmp)(void *,void *), int (*hash)(void *));
/*! 
 * \brief hash_add a new data into the hash table
 * \param hash
 * \param data
 * \return 
 */

int hash_add(struct hash_Table *hash,void *data);
int hash_cherche(struct hash_Table *hash,void *data);
void hash_free(struct hash_Table *hash, void (*release)(void *));
#endif
