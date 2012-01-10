/*
 *  tests.m
 *  LinkedList
 *
 *  Created by Eddie Groberski on 9/26/11.
 *  Copyright 2011 Eddie Groberski. All rights reserved.
 *
 */
#include "Tests.h"

@implementation Tests
@synthesize list;

-(id)init{	
	self = [super init]; 
    if (self) { 
        list = [[LinkedList alloc] init]; //creates original list 				
    } 
    return self; 
}

-(LinkedList*) firstTest
{	
	//allocate mem for all of the original 26 nodes
	Node *n1 = [[Node alloc] init];
	Node *n2 = [[Node alloc] init];
	Node *n3 = [[Node alloc] init];
	Node *n4 = [[Node alloc] init];
	Node *n5 = [[Node alloc] init];
	Node *n6 = [[Node alloc] init];
	Node *n7 = [[Node alloc] init];
	Node *n8 = [[Node alloc] init];
	Node *n9 = [[Node alloc] init];
	Node *n10 = [[Node alloc] init];
	Node *n11 = [[Node alloc] init];
	Node *n12 = [[Node alloc] init];
	Node *n13 = [[Node alloc] init];
	Node *n14 = [[Node alloc] init];
	Node *n15 = [[Node alloc] init];
	Node *n16 = [[Node alloc] init];
	Node *n17 = [[Node alloc] init];
	Node *n18 = [[Node alloc] init];
	Node *n19 = [[Node alloc] init];
	Node *n20 = [[Node alloc] init];
	Node *n21 = [[Node alloc] init];
	Node *n22 = [[Node alloc] init];
	Node *n23 = [[Node alloc] init];
	Node *n24 = [[Node alloc] init];
	Node *n25 = [[Node alloc] init];
	Node *n26 = [[Node alloc] init];
	
	//creats all the values for original 26 nodes
	[n1 create: 12 : 'A' : @"Node_A" ];
	[n2 create: 2111 : 'B' : @"Node_B" ];
	[n3 create: 2121 : 'C' : @"Node_C" ];
	[n4 create: 211 : 'D' : @"Node_D" ];
	[n5 create: 1 : 'E' : @"Node_E" ];
	[n6 create: 1121 : 'F' : @"Node_F" ];
	[n7 create: 221 : 'G' : @"Node_G" ];
	[n8 create: 1111 : 'H' : @"Node_H" ];
	[n9 create: 11 : 'I' : @"Node_I" ];
	[n10 create: 1222 : 'J' : @"Node_J" ];
	[n11 create: 212 : 'K' : @"Node_K" ];
	[n12 create: 1211 : 'L' : @"Node_L" ];
	[n13 create: 22 : 'M' : @"Node_M" ];
	[n14 create: 21 : 'N' : @"Node_N" ];
	[n15 create: 222 : 'O' : @"Node_O" ];
	[n16 create: 1221 : 'P' : @"Node_P" ];
	[n17 create: 2212 : 'Q' : @"Node_Q" ];
	[n18 create: 121 : 'R' : @"Node_R" ];
	[n19 create: 111 : 'S' : @"Node_S" ];
	[n20 create: 2 : 'T' : @"Node_T" ];
	[n21 create: 112 : 'U' : @"Node_U" ];
	[n22 create: 1112 : 'V' : @"Node_V" ];
	[n23 create: 122 : 'W' : @"Node_W" ];
	[n24 create: 2112 : 'X' : @"Node_X" ];
	[n25 create: 2122 : 'Y' : @"Node_Y" ];
	[n26 create: 2211 : 'Z' : @"Node_Z" ];
	
	//inserts all 26 nodes into the list
	[list insertNode: n1];
	[list insertNode: n2];
	[list insertNode: n3];
	[list insertNode: n4];
	[list insertNode: n5];
	[list insertNode: n6];
	[list insertNode: n7];
	[list insertNode: n8];
	[list insertNode: n9];
	[list insertNode: n10];
	[list insertNode: n11];
	[list insertNode: n12];
	[list insertNode: n13];
	[list insertNode: n14];
	[list insertNode: n15];
	[list insertNode: n16];
	[list insertNode: n17];
	[list insertNode: n18];
	[list insertNode: n19];
	[list insertNode: n20];
	[list insertNode: n21];
	[list insertNode: n22];
	[list insertNode: n23];
	[list insertNode: n24];
	[list insertNode: n25];
	[list insertNode: n26];
		
	NSLog(@"--TEST 1-Insertion--");
	NSLog(@" ");
	list.print;
	NSLog(@"--END TEST 1--");
	NSLog(@"--");
	return list;
}

-(LinkedList*) secondTest
{
	//deletes node once node is found by searchByChar method
	[list deleteNode: [list searchByChar:'F']];
	[list deleteNode: [list searchByChar:'R']];
	[list deleteNode: [list searchByChar:'B']];
	[list deleteNode: [list searchByChar:'Z']];
	[list deleteNode: [list searchByChar:'A']];
	[list deleteNode: [list searchByChar:'M']];
	[list deleteNode: [list searchByChar:'G']];
	[list deleteNode: [list searchByChar:'R']];
	[list deleteNode: [list searchByChar:'C']];
	[list deleteNode: [list searchByChar:'Q']];
	[list deleteNode: [list searchByChar:'Y']];
	[list deleteNode: [list searchByChar:'C']];
	[list deleteNode: [list searchByChar:'N']];

	NSLog(@"--TEST 2-Deletion--");
	NSLog(@" ");
	list.print;
	NSLog(@"--END TEST 2--");
	NSLog(@"--");
	return list;
}


-(LinkedList*) thirdTest
{
	//list is sorted by value
	[list sortList: list];
	NSLog(@"--TEST 3-Sorting--");
	NSLog(@" ");
	list.print;
	NSLog(@"--END TEST 3--");
	NSLog(@"--");
	return list;
}

-(void) cleanUp
{
	Node *p = list.head;
	NSLog(@"--STARTING CLEAN UP--");
	NSLog(@" ");
	int deleteCount = 1;
	while( p != 0)
	{	
		//each node is deleted individually
		[list deleteNode:p];
		NSLog(@"Node %i Released...", deleteCount);
		deleteCount++;
		p = p.next;
	}
	//once all nodes have been released, the list is released
	[list release];
	NSLog(@"List Released...");
	NSLog(@" ");
	NSLog(@"--END CLEAN UP--");
	NSLog(@"--");
}

@end

	
	


