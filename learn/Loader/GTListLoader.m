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
    NSString *urlString = @"http://static001.geekbang.org/univer/classes/ios_dev/lession/45/toutiao.json";
    NSURL *listURL = [NSURL URLWithString:urlString];
    
    __unused NSURLRequest *listRequest = [NSURLRequest requestWithURL:listURL];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:listURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"");
    }];
    [dataTask resume];
}

@end
