//
//  GTRecommendViewController.m
//  learn
//
//  Created by zhuchao02 on 2019/8/3.
//  Copyright © 2019 zhuchao02. All rights reserved.
//

#import "GTRecommendViewController.h"

@interface GTRecommendViewController () <UIScrollViewDelegate>

@end

@implementation GTRecommendViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"推荐";
        self.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.backgroundColor = [UIColor lightGrayColor];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 5, self.view.bounds.size.height);
    scrollView.delegate = self;
    
    NSArray *colorList = @[[UIColor redColor], [UIColor yellowColor], [UIColor blueColor], [UIColor lightGrayColor], [UIColor grayColor]];
    for (int i = 0; i < [colorList count]; i++) {
        [scrollView addSubview:({
            UIView *view = [[UIView alloc] initWithFrame:(CGRectMake(scrollView.bounds.size.width * i, 0, scrollView.bounds.size.width, scrollView.bounds.size.height))];
            view.backgroundColor = [colorList objectAtIndex:i];
            view;
        })];
    }
//    scrollView.pagingEnabled = YES;
//    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    [self.view addSubview:scrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    NSLog(@"start drag");
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"start drag");
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"end drag");
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
}

@end
