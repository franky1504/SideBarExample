//
//  View3Controller.m
//  SidebarExample
//
//  Created by Franky Wu on 2015/9/21.
//  Copyright © 2015年 FET. All rights reserved.
//

#import "View3Controller.h"

@interface View3Controller ()

@end

@implementation View3Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    [SideBarInit initSideBar:self withLeftViewWdith:120 withRightViewWdith:160];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
