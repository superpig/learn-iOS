//
//  GTListLoader.m
//  learn
//
//  Created by zhuchao02 on 2019/9/7.
//  Copyright © 2019 superpig. All rights reserved.
//

#import "GTListLoader.h"

@implementation GTListLoader

- (void)loadListData {
    NSString *urlString = @"https://km.sankuai.com/api/collection/collection?collectionType=0&contentTypes=1";
    NSURL *listURL = [NSURL URLWithString:urlString];
    
    __unused NSURLRequest *listRequest = [NSURLRequest requestWithURL:listURL];
    
    NSLog(@"");
}

@end
