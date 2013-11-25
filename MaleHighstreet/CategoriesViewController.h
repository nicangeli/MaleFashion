//
//  CategoriesViewController.h
//  MaleHighstreet
//
//  Created by Nicholas Angeli on 24/11/2013.
//  Copyright (c) 2013 NicholasAngeli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoriesViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) NSArray *categories;

@end
