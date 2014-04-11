//
//  main.m
//  iterator
//
//  Created by rei kubonaga on 2014/04/11.
//  Copyright (c) 2014年 rei kubonaga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookShelf.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BookShelf *bookShelf = [BookShelf new];

        for (id object in bookShelf) {
            NSLog(@"%@", object);
        }
    }
    return 0;
}

