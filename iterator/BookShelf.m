//
//  BookShelf.m
//  iterator
//
//  Created by rei kubonaga on 2014/04/11.
//  Copyright (c) 2014年 rei kubonaga. All rights reserved.
//

#import "BookShelf.h"

@implementation BookShelf

- (id)init
{
    self = [super init];
    if (!self) {
        return nil;
    }

    for (int i = 0; i < ARRAY_SIZE; i++) {
        _objects[i] = [NSNumber numberWithInt:i];
    }

    return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id __unsafe_unretained [])buffer count:(NSUInteger)len
{
    if (state->state >= ARRAY_SIZE) {
        return 0;
    }

    state->itemsPtr = _objects;
    state->state = ARRAY_SIZE;
    state->mutationsPtr = &state->extra[0];

    return ARRAY_SIZE;
}

@end
