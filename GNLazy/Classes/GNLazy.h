//
//  GNLazy.h
//  GNLazy
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import <Foundation/Foundation.h>



/**
 * This API can be called from any thread. However it's up to the caller to take care of the thread-safety.
 */
__attribute__((objc_subclassing_restricted))
@interface GNLazy<T> : NSObject

/**
 * @pre {@code loader} is not {@code nil}
 *
 * @param loader block to be called once (thread-safety guaranteed by the {@link GNLazy<T>} class) in the very first
 *         {@link #safeGet()}/{@link #fastGet()} invocation
 */
+ (nonnull instancetype)createFromLoader:(nonnull T _Nullable (^)())loader;

- (nullable T)safeGet;

- (nullable T)fastGet;

@end
