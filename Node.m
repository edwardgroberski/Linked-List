/*
 *  Node.m
 *  LinkedList
 *
 *  Created by Eddie Groberski on 9/24/11.
 *  Copyright 2011 Eddie Groberski. All rights reserved.
 *
 */
#import "Node.h"


@implementation Node
@synthesize name;
@synthesize next;
@synthesize prev;

-(void) print
{
	NSLog(@"  name: %@",self.name );
	NSLog(@"  next: %@", next.name);
	NSLog(@"  prev: %@", prev.name);
	NSLog(@" value: %d", value);
	NSLog(@"  char: %c", letter);
	NSLog(@" ");
}


-(void) create: (int) inValue : (char) inC : (NSString *) inName;
{
	value = inValue;
	letter = inC;
	name = inName;
}


-(void) setLetter: (char) inLetter
{
	letter = inLetter;
}

-(char) getLetter
{
	return letter;
}

-(void) setValue: (int) inValue
{
	value = inValue;
}

-(int) getValue
{
	return value;
}



@end

