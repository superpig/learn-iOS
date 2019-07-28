//
//  GTVideoViewController.m
//  learn
//
//  Created by zhuchao02 on 2019/7/28.
//  Copyright © 2019 zhuchao02. All rights reserved.
//

#import "GTVideoViewController.h"

@interface GTVideoViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation GTVideoViewController

- (instancetype) init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"视频";
        self.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UICollectionViewLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollecitonViewCell"];
    [self.view addSubview:collectionView];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollecitonViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}


@end
