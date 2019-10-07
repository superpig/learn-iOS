//
//  GTListItem.m
//  learn-iOS
//
//  Created by zhuchao02 on 2019/9/22.
//  Copyright © 2019 superpig. All rights reserved.
//

#import "GTListItem.h"

// 列表结构化数据

@implementation GTListItem

-(void)configWithDictionary:(NSDictionary *)dictionary{
#warning 类型是否匹配
    self.category = [dictionary objectForKey:@"category"];
    self.thumbnailUrl = [dictionary objectForKey:@"thumbnail_pic_s"];
    self.title = [dictionary objectForKey:@"title"];
    self.date = [dictionary objectForKey:@"date"];
    self.aticleUrl = [dictionary objectForKey:@"url"];
    self.uniquekey = [dictionary objectForKey:@"uniquekey"];
    self.authorName = [dictionary objectForKey:@"author_name"];
}


@end
