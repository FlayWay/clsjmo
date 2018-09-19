//
//  TwoType.m
//  kuangjia
//
//  Created by ljkj on 2018/9/19.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "TwoType.h"
#import "TwoCollectionCell.h"

static TwoType *_type = nil;

@implementation TwoType

+ (instancetype)shard{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _type = [[TwoType alloc]init];
    });
    return _type;
    
}

- (UICollectionViewCell *)lj_collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    TwoCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"two" forIndexPath:indexPath];
    return cell;
    
}

- (CGSize)lj_collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake([UIScreen mainScreen].bounds.size.width / 2 - 20 , 200);
}

@end


