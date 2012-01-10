/*
 *  LinkedList.h
 *  LinkedList
 *
 *  Created by Eddie Groberski on 9/24/11.
 *  Copyright 2011 Eddie Groberski. All rights reserved.
 *
 */
#import <Foundation/Foundation.h>
#import "Node.h"


@interface LinkedList : NSObject
{
	Node *head;
	Node *tail;
	int size;
}

@property (nonatomic, retain) Node *head;
@property (nonatomic, retain) Node *tail;


-(void) print;
-(void) insertNode: (Node *) inNode;
-(void) deleteNode: (Node *) inNode;
-(Node *) searchByChar: (char) letter;
-(LinkedList *) sortList: (LinkedList *) list;



@end
