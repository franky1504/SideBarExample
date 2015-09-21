//
//  LeftMenuViewController.m
//  SidebarExample
//
//  Created by Franky Wu on 2015/9/21.
//  Copyright © 2015年 FET. All rights reserved.
//

#import "LeftMenuViewController.h"

@interface LeftMenuViewController()
@end

@implementation LeftMenuViewController


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    menuItems = @[@"menu1",@"menu2",@"menu3",@"menu4"];
    menuSec = @[@"List1"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma marl - UITableView Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [menuSec count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [menuItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SWRevealViewController *revealController = [self revealViewController];
    UIViewController *newFrontController = nil;
    
    // selecting row
    NSArray *row = [menuItems objectAtIndex:indexPath.row];
    
    if ([row isEqual:@"menu1"]) {
        newFrontController = [self.storyboard instantiateViewControllerWithIdentifier:@"view1"];
    }
    if ([row isEqual:@"menu2"]) {
        newFrontController = [self.storyboard instantiateViewControllerWithIdentifier:@"view2"];
    }
    if ([row isEqual:@"menu3"]) {
        newFrontController = [self.storyboard instantiateViewControllerWithIdentifier:@"view3"];
    }
    if ([row isEqual:@"menu4"]) {
        newFrontController = [self.storyboard instantiateViewControllerWithIdentifier:@"view4"];
    }
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
    [revealController pushFrontViewController:navigationController animated:YES];
}


@end