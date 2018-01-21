#include <stdio.h>
#include <stdlib.h>
#include "BinaryTrees.h"

typedef struct Word Word;

int main(int argc, char **argv) {


  char *input_path = argv[1];
  char *output_path = "myoutput01.txt";
  FILE *ptr_file;
  FILE *fp; 
  
  // open file to txt as read only
  ptr_file = fopen(input_path,"r");

  // throw error and end if file is NULL
  if (!ptr_file) {
    return 1; 
  }
  
  // create word node to be top of tree
  Word *mytree = 0;

  // read words and create tree
  mytree = createTree(mytree, ptr_file);

  // close input file
  fclose(ptr_file);

  /* open the file for writing*/
  fp = fopen(output_path,"w");
 
  // create export
  printTree(mytree, fp);

  // close output  
  fclose (fp);
  
  // free tree memory
  clearTree(mytree);
  
  //exit normally
  return 0;
}


 
