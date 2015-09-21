//
//  FrontViewController.m
//  SidebarExample
//
//  Created by Franky Wu on 2015/9/21.
//  Copyright © 2015年 FET. All rights reserved.
//

#import "FrontViewController.h"

@interface FrontViewController ()

@end

@implementation FrontViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SideBarInit initSideBar:self withLeftViewWdith:120 withRightViewWdith:160];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
