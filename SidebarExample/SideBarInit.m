//
//  SideBarInit.m
//  SidebarExample
//
//  Created by Franky Wu on 2015/9/21.
//  Copyright © 2015年 FET. All rights reserved.
//

#import "SideBarInit.h"

@implementation SideBarInit

#pragma mark initViewUI
+ (void)initSideBar:(UIViewController *)viewController withLeftViewWdith:(int )Lwidth withRightViewWdith:(int )Rwidth{
    SWRevealViewController *revealController = [viewController revealViewController];
    revealController.rearViewRevealWidth = Lwidth;
    revealController.rightViewRevealWidth = Rwidth;
    
    [revealController panGestureRecognizer];
    [revealController tapGestureRecognizer];
    
    UIBarButtonItem *leftButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_list"] style:UIBarButtonItemStylePlain target:revealController action:@selector(revealToggle:)];
    viewController.navigationItem.leftBarButtonItem = leftButtonItem;
    
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_list"] style:UIBarButtonItemStylePlain target:revealController action:@selector(rightRevealToggle:)];
    viewController.navigationItem.rightBarButtonItem = rightButtonItem;
}

@end
