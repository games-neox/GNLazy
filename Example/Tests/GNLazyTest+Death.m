//
//  GNLazyTest+Death.m
//  GNLazy
//
//  Created by Games Neox - 2017
//  Copyright © 2017 Games Neox. All rights reserved.
//

#import "GNLazyTest.h"

#import <GNLazy/GNLazy.h>
#import <GNPreconditions/GNPreconditions.h>

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wnonnull"



@implementation GNLazyTest (Death)

/**
 * invalid ({@code nil}) loader provided
 */
- (void)testDeathCreateFromLoader
{
    XCTAssertThrowsSpecificNamed([GNLazy createFromLoader:nil], GNNilPointerException, kGNNilPointerException);
}

@end

#pragma clang diagnostic pop
