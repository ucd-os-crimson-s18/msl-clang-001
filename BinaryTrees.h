#include <stdio.h>

typedef struct Word {

  char* text; // word string
  int counts; // number of times word occurs in tree
  struct Word *left; // node to lower subtree
  struct Word *right;// node to upper subtree
 
} Word;


// Function declarations
Word * addWord(Word *tree, char *text);
int printTree(Word *tree, FILE *fp);
int clearTree(Word *tree);
Word * createTree(Word *tree, FILE *file);
