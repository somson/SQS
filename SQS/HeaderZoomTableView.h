//
//  HeaderZoomTableView.h
//  TableViewHeaderZoomEffect
//
//  Created by qianfeng on 15/9/10.
//  Copyright (c) 2015年 zhang jian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderZoomTableView : UITableView
@property (nonatomic,strong)  UIView *headView;
- (void)dealScrollViewDidScroll:(UIScrollView *)scrollView;
@end
