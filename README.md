# C Programming Assignment 1

## Jeff McMillan, Eric Holguin

###### Data Structures and Pointers in the C Language

### Approach
* First we need to read in the input file as the first argument in the program and store into a binary tree
* Using only ANSI C Standard Library we needed to implement our own Binary Tree using a self-referential 
struct, adding dynamic allocation for new words, a counter for word count, and two pointers to the left 
and right subtrees.
* We had to have an insert function to insert new words onto our tree checking against already inserted words, 
for alphabetical order. The nodes and words were dynamically allocated using the malloc function.
* We needed to implement a delete function in order to free the memory we used. 
* Finally, we needed a output function in order to traverse the tree and produce an alphabetical output with 
a word count on the file. 
* After we read the data and store it in our binary tree we could then output to our file and finally delete the tree.

### Data Structures
As directed we used a Binary Tree data structure to store the words from the file.
Created a self-referential struct of nodes, containing a pointer of characters to store the word,
an integer to store the count of each word, and two node pointers for the left and right subtree.
This data structure allowed for us to store the words in alphabetical order. 

### Algorithms 
> All of our functions that interacted with our binary tree involved recursion
* **Insert:** If the tree position was open we could insert the new word, dynamically allocating space using malloc.
Otherwise we would check the non-empty space and compare the word contained inside against the one we were about to insert,
using the string compare function inside the string.h library. If the word was smaller, in other words, came before the other 
in the alphabet, than we would do a recursive call with the function taking in this next node pointing to the left subtree, 
if the word was greater, this meant it came after the other word, and the recursive call would contain the next node pointing 
to the right subtree. Otherwise this word already existed and we would simply increase the word count at the node.
* **Delete:** When deleting a tree we would do recursive calls to traverse the tree in an in-order traversal. Then delete each word 
and subtree freeing the words then leaves, until the tree was empty.
* **File Output:** When outputting the data to a file we used an in-order traversal again in order to display the data alphabetically.
Starting with the left-most leaf, then the root, and finally the right-most leaf, until all the words
were printed onto the file, in between these traversals we would print the word and its associated count.
