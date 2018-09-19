//
//  BaseCollectionCell.h
//  kuangjia
//
//  Created by ljkj on 2018/9/18.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellType.h"

@interface BaseCollectionCell : UICollectionViewCell

@property (nonatomic, strong) CellType *cellType;

- (UICollectionViewCell *)validateWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)path;
- (CGSize)lj_collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

@end
