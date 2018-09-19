//
//  CellType.h
//  kuangjia
//
//  Created by ljkj on 2018/9/18.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellType : NSObject

- (UICollectionViewCell *)lj_collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
- (CGSize)lj_collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;
@end
