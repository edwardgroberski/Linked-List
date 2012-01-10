/*
 *  main.m
 *  LinkedList
 *
 *  Created by Eddie Groberski on 9/26/11.
 *  Copyright 2011 Eddie Groberski. All rights reserved.
 *
 */
#import <Foundation/Foundation.h>
#import "Tests.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Tests *test = [[Tests alloc] init];
	[test firstTest]; //runs first test
	[test secondTest]; //runs second test
	[test thirdTest]; //runs third test
	[test cleanUp]; //releases all nodes and list from memory
	[test release]; //releases the alloc mem for test
    [pool drain]; //releases the rest of memory
    return 0;
}
