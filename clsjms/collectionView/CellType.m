//
//  CellType.m
//  kuangjia
//
//  Created by ljkj on 2018/9/18.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "CellType.h"

@implementation CellType

- (UICollectionViewCell *)lj_collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return [UICollectionViewCell new];
}

- (CGSize)lj_collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeZero;
}

@end
