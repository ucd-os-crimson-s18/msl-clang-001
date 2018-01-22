# C Programming Assignment 1

## Jeff McMillan, Eric Holguin
_data structures and pointers in the C language_

* * * 


## Approach
Using only ANSI C Standard Library we needed to implement our own Binary Tree using a self-referential 
struct, adding dynamic allocation for new words and a counter for word count. We must have an insert function 
to insert new words onto our tree checking against already inserted words for alphabetical order.
The nodes and words were dynamically allocated using the malloc function. We needed to implement
a delete function in order to free the memory we used. Finally, we needed a output function in order
to traverse the tree and produce an alphabetical output with word count on the file. The input file
was read through the command line and processed in chunks using a buffer where the insert function was called.
After we could read the data and stored it in our binary tree we could then output to our file and finally
delete the tree.

## Data Structures
As directed we used a Binary Tree data structure to store the words from the file.
Created a self-referential struct of nodes, containing a pointer of characters to store the word,
an integer to store the count of each word, and two node pointers for the left and right subtree.
This data structure allowed for us to store the words in alphabetical order. 

## Algorithms 
Our 3 functions that interacted with our data structure were an insert function, delete function, 
and an output function. 
When inserting a new node with a new word we used recursion. If the position
was open we could insert the new word, dynamically allocating space using malloc. Otherwise we would check
the non-empty space and compare the word contained inside against the one we were about to insert.
If the word was smaller, in other words, came before the other in the alphabet than we would do a recursive 
call with the function taking in this next node pointing to the left subtree, if the word was greater, this meant
it came after the other word and the recursive call would contain the next node pointing to the right subtree.
Otherwise this word already existed and we would simply increase the word count at the node.
When deleting a tree we would do recursive calls to traverse the tree inorder and delete each word and subtree
until the tree was empty freeing the words then leaves.
When outputting the data to a file we use an in-order traversal in order to display the data alphabetically.
