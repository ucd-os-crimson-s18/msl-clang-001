#include "BinaryTrees.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Binary Tree functions


Word * addWord(Word *tree, char *text){

  if(!tree) {
    // tree is null
    //create new tree and word node
    Word *node;
    node = malloc(sizeof(Word));
    char *word = malloc(sizeof(text));
    strcpy(word, text);
    node->text = word;
    node->counts = 1;
    return node;
    
  } else {

    // check if word already in tree
    int txt_cmp = strcmp(tree->text,text);

    if(txt_cmp < 0){
      // recursive call to left
      Word *subtree = tree->left;
      tree->left = addWord(subtree, text);
    }else if (txt_cmp > 0){
      // recursive call to right
      Word *subtree = tree->right;
      tree->right = addWord(subtree, text);
    }else {
      // if word found, then increment count
      tree->counts++;
    }  
  }
 
  return tree;
}

int clearTree(Word *tree){

  // clear any trees to left if not null
  if(tree->left){
    clearTree(tree->left);
  }
  // clear any trees to right is not null
  if(tree->right){
    clearTree(tree->right);
  }

  free(tree);

  return 0;
}

int printTree(Word *tree, FILE *fp){

  
  if(tree->right){
    printTree(tree->right, fp);
  }
  
  if(tree->text){
    fprintf(fp, "%s: %i\n", tree->text, tree->counts);
  }
 
  if(tree->left){
    printTree(tree->left, fp);
  }

  return 0;
}



Word * createTree(Word *tree, FILE *file){

  int n = 0;
  char *buf = malloc(50);
  char c_cast;
  int c;
 
  // read from file one character at time
  while ((c = fgetc(file)) != EOF) {
    c_cast = (char) c;
    // if not a space, add character to buffer
    if(c_cast != ' '){
      buf[n++] =  c_cast;
    }else{
      // if space found
      buf[n] = '\0';
      tree = addWord(tree, buf);
      // reset the buffer and n
      n = 0;
      buf[n] = '\0';
    }
  }

  // one final round to get the last word that doesnt have a space at end
  buf[n-1] = '\0';
  tree = addWord(tree, buf);
  
  free(buf);   
  return tree;
  
}
