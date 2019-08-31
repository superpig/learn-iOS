//
//  GTNormalTableViewCell.h
//  learn
//
//  Created by zhuchao02 on 2019/8/24.
//  Copyright © 2019 zhuchao02. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GTNormalTableViewCellDelegate <NSObject>
- (void)tableViewCell:(UITableViewCell *)tableViewCell clickDeleteButton:(UIButton *)deleteButton;
@end

@interface GTNormalTableViewCell : UITableViewCell

@property(nonatomic, weak, readwrite) id<GTNormalTableViewCellDelegate> delegate;

- (void) layoutTableViewCell;

@end

NS_ASSUME_NONNULL_END
