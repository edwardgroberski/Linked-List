/*
 *  LinkedList.m
 *  LinkedList
 *
 *  Created by Eddie Groberski on 9/24/11.
 *  Copyright 2011 Eddie Groberski. All rights reserved.
 *
 */
#import <Foundation/Foundation.h>
#import "LinkedList.h"

@implementation LinkedList
@synthesize head;
@synthesize tail;


-(void) print 
{	
	Node *p = head;
	while( p != 0)
	{	
		[p print];
		p = p.next;
	}	
}

-(void) insertNode: (Node *) inNode
{
	//insertion happens on the tail end of list 
	if( head == 0 )//first node going in
	{
		head = inNode;
		[inNode setNext: 0];
		[inNode setPrev: 0];
		tail = inNode;
		size++;
	}
	else //other nodes
	{
		[inNode setNext: 0];
		[tail setNext: inNode];
		[inNode setPrev: tail];
		tail = inNode;
		size++;
	}
	
}

-(void)deleteNode:(Node *) nodeToDelete
{
	Node *prevNode = nodeToDelete.prev;
	Node *nextNode = nodeToDelete.next;
	
	
	if (nodeToDelete == head)//node is head 
	{
		[nextNode setPrev: prevNode];
		head = nextNode;
		[nodeToDelete release];
		size--;
	}
	else if (nodeToDelete == tail)//node is tail
	{
		[prevNode setNext: nextNode];
		tail =prevNode; 
		[nodeToDelete release];
		size--;
	}
	else { //any other nodes
		[prevNode setNext: nextNode];
		[nextNode setPrev: prevNode];
		[nodeToDelete release];
		size--;
	}
	
}

-(Node *) searchByChar: (char) letter
{
	Node *node = head;
	while(node != 0)
	{	
		if ([node getLetter] == letter)//node's letter is match
		{
			return node;
		}
		else {
			node = node.next;
		}
	}
	return 0;
}

-(LinkedList *) sortList: (LinkedList *) list
{
	Node *node = list.head;
	Node *index = [[Node alloc] init];
	Node *temp = [[Node alloc] init];
	for(; node.next != 0 ; node = node.next)
	{
		for(index = node.next; index != 0; index = index.next)
		{
			if([node getValue] > [index getValue])
			{
				//temp takes nodes values
				[temp setValue:[node getValue]];
				[temp setLetter:[node getLetter]];
				[temp setName: node.name];
				
				//node switches values with index
				[node setValue:[index getValue]];
				[node setLetter:[index getLetter]];
				[node setName: index.name]; 
				
				//index takes temp values, which were node's 
				[index setValue:[temp getValue]];
				[index setLetter:[temp getLetter]];
				[index setName: temp.name];
			}
		}			
	}
	[index release];
	[temp release];
	return list;
}



@end



