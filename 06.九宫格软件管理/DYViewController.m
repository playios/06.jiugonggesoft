//
//  DYViewController.m
//  06.九宫格软件管理
//
//  Created by YOU on 15/3/29.
//  Copyright (c) 2015年 you. All rights reserved.
//

#import "DYViewController.h"
#import "DYAppInfo.h"
@interface DYViewController ()
@property(nonatomic,strong)NSArray *appList;
@end

@implementation DYViewController
-(NSArray *)appList{
    if (_appList==nil) {
        _appList=[DYAppInfo appList];
    }
    return _appList;
}
- (void)viewDidLoad
{
#define kAppViewW 80
#define kAppViewH   90
#define kAppCount   3
    [super viewDidLoad];
    CGFloat marginX=(self.view.frame.size.width-kAppCount*kAppViewW)/(kAppCount+1);
    CGFloat marginY=20;
    
    for (int i=0; i<9; i++) {
        CGFloat x=marginX+(marginX+kAppViewW)*(i%kAppCount);
        CGFloat y=marginY+(marginY+kAppViewH)*(i/kAppCount);
        UIView *appView=[[UIView alloc]initWithFrame:CGRectMake(x, y, kAppViewW, kAppViewH)];
//        appView.backgroundColor=[UIColor redColor];
        [self.view addSubview:appView];
        
        DYAppInfo *appInfo=self.appList[i];
        
        UIImageView *icon=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0 , kAppViewW, 50)];
        icon.image=appInfo.image;
        icon.contentMode=UIViewContentModeScaleAspectFit;
        [appView addSubview:icon];
        
        UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(icon.frame), kAppViewW, 20)];
        lable.text=appInfo.name;
        lable.font=[UIFont systemFontOfSize:13];
        lable.textAlignment=NSTextAlignmentCenter;
        [appView addSubview:lable];
        
        UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(lable.frame), kAppViewW, 20)];
        
        button.backgroundColor=[UIColor yellowColor];
        [button setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:@"buttongreen_highted"] forState:UIControlStateHighlighted];
        [button setTitle:@"下载" forState:UIControlStateNormal];
        button. titleLabel.font=[UIFont systemFontOfSize:12];
        [appView addSubview:button];
        
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
