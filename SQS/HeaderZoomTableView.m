//
//  HeaderZoomTableView.m
//  TableViewHeaderZoomEffect
//
//  Created by qianfeng on 15/9/10.
//  Copyright (c) 2015年 zhang jian. All rights reserved.
//

#import "HeaderZoomTableView.h"
#define NavigationBarHight 64.0f


@interface HeaderZoomTableView ()
{
    CGFloat ImageHight;
}
@end
@implementation HeaderZoomTableView

-(id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    if(self = [super initWithFrame:frame style:style])
    {
        self.frame = frame;
    }
    return self;
}
-(void)setHeadView:(UIView *)headView
{
    _headView = headView;
    [self createUI:headView];
}
-(void)createUI:(UIView *)headView
{
    //tableView偏移量
    NSLog(@"%@",NSStringFromCGRect(headView.frame));
    ImageHight = headView.frame.size.height;
    
    self.contentInset = UIEdgeInsetsMake(ImageHight, 0, 0, 0);
    
    headView.frame = CGRectMake(headView.frame.origin.x, -ImageHight, headView.frame.size.width, headView.frame.size.height);
    
    [self addSubview:_headView];
    

    
    //高度改变 宽度也改变
    headView.contentMode = UIViewContentModeScaleAspectFill;
    
    //设置autoresizesSubviews让子类自动布局
    _headView.autoresizesSubviews = YES;
    
    
}
//下拉操作时调用这个方法
- (void)dealScrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat y = scrollView.contentOffset.y+NavigationBarHight;//根据实际选择加不加上NavigationBarHight（44、64 或者没有导航条）
    if (y < -ImageHight) {
        CGRect frame = _headView.frame;
        frame.origin.y = y;
        frame.size.height =  -y;//contentMode = UIViewContentModeScaleAspectFill时，高度改变宽度也跟着改变
        _headView.frame = frame;
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
