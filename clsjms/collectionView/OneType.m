//
//  OneType.m
//  kuangjia
//
//  Created by ljkj on 2018/9/18.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "OneType.h"
#import "OneCollectionCell.h"

static OneType *_type = nil;

@implementation OneType

+ (instancetype)shard{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _type = [[OneType alloc]init];
    });
    return _type;
    
}

- (UICollectionViewCell *)lj_collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    OneCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"one" forIndexPath:indexPath];
    return cell;
}

- (CGSize)lj_collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake([UIScreen mainScreen].bounds.size.width - 20 , 200);
}

@end
