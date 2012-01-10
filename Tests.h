/*
 *  tests.h
 *  LinkedList
 *
 *  Created by Eddie Groberski on 9/26/11.
 *  Copyright 2011 Eddie Groberski. All rights reserved.
 *
 */
#import "LinkedList.h"
#import "Node.h"

@interface Tests : NSObject
{
	LinkedList *list;
}
@property (nonatomic, retain) LinkedList *list;

-(id)init;
-(LinkedList*) firstTest;
-(LinkedList*) secondTest;
-(LinkedList*) thirdTest;
-(void) cleanUp;

@end


