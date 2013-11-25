//
//  CategoriesViewController.m
//  MaleHighstreet
//
//  Created by Nicholas Angeli on 24/11/2013.
//  Copyright (c) 2013 NicholasAngeli. All rights reserved.
//

#import "CategoriesViewController.h"
#import "CategoryCell.h"
#import "CollectionViewController.h"

@interface CategoriesViewController ()

@end

@implementation CategoriesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.categories = [NSArray arrayWithObjects:@"Tops", @"Bottoms", @"Shoes", @"Bags", @"Jumpers", @"Winter", nil];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.categories count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)myCollectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    CategoryCell *cell = [myCollectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.category.text = [self.categories objectAtIndex:indexPath.item];
    return cell;
}

-(void)collectionView:(UICollectionView *)cv didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"CategorySelected"]) {
        CategoryCell *cc = (CategoryCell *)sender;
        CollectionViewController *destination = [segue destinationViewController];
        destination.category = cc.category.text;
        NSLog(@"%@", cc.category.text);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
