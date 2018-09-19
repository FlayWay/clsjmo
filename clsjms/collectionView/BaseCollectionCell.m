//
//  BaseCollectionCell.m
//  kuangjia
//
//  Created by ljkj on 2018/9/18.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "BaseCollectionCell.h"

@implementation BaseCollectionCell

- (UICollectionViewCell *)validateWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)path {

    return [self.cellType lj_collectionView:collectionView cellForItemAtIndexPath:path];
}

- (CGSize)lj_collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return [self.cellType lj_collectionView:collectionView layout:collectionViewLayout sizeForItemAtIndexPath:indexPath];
}



@end
