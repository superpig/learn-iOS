//
//  GTDeleteCellView.h
//  learn
//
//  Created by zhuchao02 on 2019/8/31.
//  Copyright © 2019 zhuchao02. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GTDeleteCellView : UIView

- (void)showDeleteViewFromPoint:(CGPoint) point clickBlock:(dispatch_block_t) clickBlock;

@end

NS_ASSUME_NONNULL_END
