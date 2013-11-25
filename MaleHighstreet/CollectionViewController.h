//
//  CollectionViewController.h
//  MaleHighstreet
//
//  Created by Nicholas Angeli on 25/11/2013.
//  Copyright (c) 2013 NicholasAngeli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) NSString *category;

@end
