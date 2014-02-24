//
//  SSLinkedList.m
//  Binary Search Tree
//
//  Created by Jeff Schwab on 2/24/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import "SSLinkedList.h"

@implementation SSLinkedList

-(void) push:(NSInteger)value
{
    SSListNode *root = [SSListNode new];
    root.value = value;
    if (self.front) {
        root.next = self.front;
    }
    self.front = root;
}

-(SSListNode*) pop
{
    SSListNode *popped = self.front;
    self.front = self.front.next;
    return popped;
}

-(SSListNode*)findNodeForValue:(NSInteger)value
{
    SSListNode *currentNode = self.front;
    while (currentNode) {
        if (currentNode.value == value) {
            return currentNode;
        }
        currentNode = currentNode.next;
    }
    return nil;
}

@end
