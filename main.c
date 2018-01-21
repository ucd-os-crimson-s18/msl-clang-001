#include <stdio.h>
#include <stdlib.h>
#include "BinaryTrees.h"

typedef struct Tree Tree;
typedef struct Word Word;

int main(int argc, char **argv) {


  char *input_path = argv[1];
  char *output_path = "myoutput01.txt";
  FILE * ptr_file;
  char buf[1000];

  
  // open file to txt as read only
  ptr_file =fopen(input_path,"r");

  // throw error and end if file is NULL
  if (!ptr_file){
   return 1; 
  }

  // create instance of tree struct
  Tree mytree;
  
  // read 1 word at time 
  while (fgets(buf,1000, ptr_file)!=NULL){

    Word *node;
    node  = malloc(sizeof(Word));
    node->text = buf;
   
    // implement node struct tree
    printf("%s",node->text);
  }

  // implement output to txt file
  
  // remember to close files
  fclose(ptr_file);

  //exit normally
  return 0;
}
