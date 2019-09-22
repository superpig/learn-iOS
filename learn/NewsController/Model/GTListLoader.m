//
//  GTListLoader.m
//  learn
//
//  Created by superpgi on 2019/9/7.
//  Copyright © 2019 superpig. All rights reserved.
//

#import "GTListLoader.h"
#import <AFNetworking.h>
#import "GTListItem.h";

@implementation GTListLoader

- (void)loadListData {
    
//    [[AFHTTPSessionManager manager] GET:@"http://static001.geekbang.org/univer/classes/ios_dev/lession/45/toutiao.json" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"");
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//
//    }];
    
    NSString *urlString = @"http://static001.geekbang.org/univer/classes/ios_dev/lession/45/toutiao.json";
    NSURL *listURL = [NSURL URLWithString:urlString];
    
    __unused NSURLRequest *listRequest = [NSURLRequest requestWithURL:listURL];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:listURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSError *jsonError;
        id jsonObj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
# warning 类型检查
        NSArray *dataList = [((NSDictionary *)[((NSDictionary *)jsonObj) objectForKey:@"result"]) objectForKey:@"data"];
        NSMutableArray *resultList = @[].mutableCopy;
        for (NSDictionary *info in dataList) {
            GTListItem *listItem = [[GTListItem alloc] init];
            [listItem configWithDictionary:info];
            [resultList addObject:listItem];
        }
        
        NSLog(@"");
    }];
    [dataTask resume];
}

@end
