//
//  GNLazy.m
//  GNLazy
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import <GNLazy/GNLazy.h>

#import <GNLog/GNLog.h>
#import <GNPreconditions/GNPreconditions.h>



@interface GNLazy<T> ()
{
@private
    T (^getter_)();
}

- (nonnull instancetype)initWithLoader:(nonnull T _Nullable (^)())loader;

@end


@implementation GNLazy

- (nonnull instancetype)initWithLoader:(nonnull id _Nullable (^)())loader
{
    self = [super init];
    if (nil != self) {
        __weak GNLazy* weakSelf = self;
        getter_ = ^ () {
            GNLazy* strongSelf = weakSelf;

            id value = loader();
            strongSelf->getter_ = ^ () {
                return value;
            };

            return value;
        };
    }

    return self;
}


+ (nonnull instancetype)createFromLoader:(nonnull id _Nullable (^)())loader
{
    [GNPreconditions checkNotNil:loader :@"loader!"];

    return [[GNLazy alloc] initWithLoader:loader];
}


- (id)safeGet
{
    @synchronized (self) {
        return [self fastGet];
    }
}


- (id)fastGet
{
    return getter_();
}

@end
