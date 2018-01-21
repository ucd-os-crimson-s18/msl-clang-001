typedef struct Word {

  char* text; // word string
  int counts; // number of times word occurs in tree
  struct Word *left; // node to lower subtree
  struct Word *right;// node to upper subtree
 
} Word;


// a collection of nodes in alphabetic order
typedef struct Tree {

  Word *top; // ptr to beginning of tree
  int Num_nodes;

} Tree;
