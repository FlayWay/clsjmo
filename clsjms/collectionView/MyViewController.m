//
//  MyViewController.m
//  kuangjia
//
//  Created by ljkj on 2018/9/17.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "MyViewController.h"
#import "BaseCollectionCell.h"
#import "OneType.h"
#import "TwoType.h"


@interface MyViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;

@property (nonatomic, strong) BaseCollectionCell *baseCell;

@end

@implementation MyViewController

- (BaseCollectionCell *)baseCell {
    if (_baseCell == nil) {
        
        _baseCell = [BaseCollectionCell new];
        _baseCell.cellType = [OneType shard];
        
    }
    return _baseCell;
}



- (UICollectionView *)collectionView {
    
    if (!_collectionView) {
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
        _collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    return _collectionView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.collectionView];
    
    UINib *nib1 = [UINib nibWithNibName:@"TwoCollectionCell" bundle:nil];
    [self.collectionView registerNib:nib1 forCellWithReuseIdentifier:@"two"];
    
    UINib *nib = [UINib nibWithNibName:@"OneCollectionCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"one"];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"changed" style:UIBarButtonItemStylePlain target:self action:@selector(changedAction)];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BaseCollectionCell *cell = (BaseCollectionCell*)[self.baseCell  validateWithCollectionView:collectionView indexPath:indexPath];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return  50;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return [self.baseCell lj_collectionView:collectionView layout:collectionViewLayout sizeForItemAtIndexPath:indexPath];
}

- (void)changedAction {
    self.baseCell.cellType = self.baseCell.cellType == [OneType shard] ? [TwoType shard] : [OneType shard];
    [self.collectionView reloadData];
}

@end
