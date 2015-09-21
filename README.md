//
//  Created by Franky Wu on 2015/9/21.
//  Copyright © 2015年 FET. All rights reserved.
//


- 使用方法

1.設定segue identifier
  左方：Table(sw_rear) 右方：Collection(sw_right) 首頁：(sw_front)

2.import SideBarInit.h

3.使用method  
  +(void)initSideBar:(UIViewController *)viewController withLeftViewWdith:(int )Lwidth withRightViewWdith:(int )Rwidth;