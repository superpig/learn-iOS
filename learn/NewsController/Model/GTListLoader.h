//
//  GTListLoader.h
//  learn
//
//  Created by superpgi on 2019/9/7.
//  Copyright © 2019 superpig. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GTListItem;

typedef void(^GTListLoaderFinishBlock)(BOOL success, NSArray<GTListItem *> *dataArray);

NS_ASSUME_NONNULL_BEGIN

@interface GTListLoader : NSObject

- (void)loadListDataWithFinishBlock:(GTListLoaderFinishBlock)finishBlock;

@end

NS_ASSUME_NONNULL_END
