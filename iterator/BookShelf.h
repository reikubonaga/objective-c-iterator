//
//  BookShelf.h
//  iterator
//
//  Created by rei kubonaga on 2014/04/11.
//  Copyright (c) 2014年 rei kubonaga. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ARRAY_SIZE 32

@interface BookShelf : NSObject <NSFastEnumeration>
{
    __unsafe_unretained id  _objects[ARRAY_SIZE];
}


@end
