//
//  SSLinkedList.h
//  Binary Search Tree
//
//  Created by Jeff Schwab on 2/24/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSListNode.h"

@interface SSLinkedList : NSObject

@property (nonatomic) SSListNode *front;

-(void) push:(NSInteger) value;
-(SSListNode*) pop;
-(SSListNode*) findNodeForValue:(NSInteger) value;

@end
