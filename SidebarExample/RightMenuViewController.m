//
//  RightMenuViewController.m
//  SidebarExample
//
//  Created by Franky Wu on 2015/9/21.
//  Copyright © 2015年 FET. All rights reserved.
//

#import "RightMenuViewController.h"

@interface RightMenuViewController ()

@end

@implementation RightMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    menuItems = @[@"btn1",@"btn2",@"btn3",@"btn4"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [menuItems count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SWRevealViewController *revealController = [self revealViewController];
    UIViewController *newFrontController = nil;
    
    // selecting row
    NSString *row = [menuItems objectAtIndex:indexPath.row];
    
    if ([row isEqual:@"btn1"]){
        newFrontController = [self.storyboard instantiateViewControllerWithIdentifier:@"view1"];
    }
    if ([row isEqual:@"btn2"]){
        newFrontController = [self.storyboard instantiateViewControllerWithIdentifier:@"view2"];
    }
    if ([row isEqual:@"btn3"]){
        newFrontController = [self.storyboard instantiateViewControllerWithIdentifier:@"view3"];
    }
    if ([row isEqual:@"btn4"]){
        newFrontController = [self.storyboard instantiateViewControllerWithIdentifier:@"view4"];
    }
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
    [revealController pushFrontViewController:navigationController animated:YES];
}

@end
