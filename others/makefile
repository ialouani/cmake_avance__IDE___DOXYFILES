CFLAG=gcc  
CC___RCCFLAG=-fPIC

project:compile.sh #version dynamique nn.
#car execution (example_dynamique)=>chargement a l'execution des liens
#entre les .o (gcc *.o(interested-) -llibhashdynamic -o rslt)
#et la librairie qui contenera des executions retenant
#l'acces aux adresses de pointage diversifees des divers .o.((besoins))
#resume: ./$\<=>chargement des symboles de la librairie sur les symboles U
#des .o pour en creer le rstl qui fut supprime avec make(2).
	./$^
	rm -f *.so *.a *.o
#avec un Makefile c'est embetant=>l'idee de rassembler les deux ou un(compile.sh) est mieux et prevenable..///
#resume(2+):: biblio_dynamic=>.sh pour automatisation(tient en compte+--((())))./////

clean:
	rm -f *.o *.c~ *.md~ Makefile~ ./thirdparty/demo.c~ executable *.h~ executable2 libhash.a libhash.so utilisation1 utilisation2 *.h.gch example_static example_dynamique *.txt *.txt~ makefile~

#unset LD_LIBRARY_PATH.
#make deja fait implicitementmake(()).
