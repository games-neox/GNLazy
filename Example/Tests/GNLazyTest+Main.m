//
//  GNLazyTest+Main.m
//  GNLazy
//
//  Created by Games Neox - 2017
//  Copyright © 2017 Games Neox. All rights reserved.
//

#import "GNLazyTest.h"

#import <GNLazy/GNLazy.h>

#define DEFAULT_STRING @"default_string"



@implementation GNLazyTest (Main)

/**
 * correct flow
 */
- (void)testSafeGet
{
    GNLazy<NSString*>* lazy = [GNLazy createFromLoader:^{
        return DEFAULT_STRING;
    }];

    NSString* loadedValue = [lazy safeGet];
    XCTAssertEqual(DEFAULT_STRING, loadedValue);
    XCTAssertEqual(loadedValue, [lazy safeGet]);
}


/**
 * correct flow
 */
- (void)testFastGet
{
    GNLazy<NSString*>* lazy = [GNLazy createFromLoader:^{
        return DEFAULT_STRING;
    }];

    NSString* loadedValue = [lazy fastGet];
    XCTAssertEqual(DEFAULT_STRING, loadedValue);
    XCTAssertEqual(loadedValue, [lazy fastGet]);
}

@end
