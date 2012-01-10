/*
 *  Node.h
 *  LinkedList
 *
 *  Created by Eddie Groberski on 9/24/11.
 *  Copyright 2011 Eddie Groberski. All rights reserved.
 *
 */
#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

@interface Node : NSObject 
{
	Node	 *next;
	Node	 *prev;
	
	NSString *name;
	int		 value;
	char	 letter;
}

// dynamic, retain
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) Node *next;
@property (nonatomic, retain) Node *prev;


-(void) create: (int) inValue : (char) inC : (NSString *) inName;
-(void) print;
-(void) setLetter: (char) inLetter;
-(char) getLetter;
-(void) setValue: (int) inValue;
-(int) getValue;





@end








