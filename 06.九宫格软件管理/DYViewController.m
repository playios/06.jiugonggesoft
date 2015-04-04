//
//  DYViewController.m
//  06.九宫格软件管理
//
//  Created by YOU on 15/3/29.
//  Copyright (c) 2015年 you. All rights reserved.
//

#define kAppViewW 80
#define kAppViewH   90
#define kAppCount   3
#define kStartY 20
#import "DYViewController.h"
#import "DYAppInfo.h"
#import "DYAppView.h"
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

    [super viewDidLoad];
    CGFloat marginX=(self.view.frame.size.width-kAppCount*kAppViewW)/(kAppCount+1);
    CGFloat marginY=10;
   
    for (int i=0; i<9; i++) {
        CGFloat x=marginX+(marginX+kAppViewW)*(i%kAppCount);
        CGFloat y=kStartY + marginY+(marginY+kAppViewH)*(i/kAppCount);
//        UIView *appView=[[UIView alloc]initWithFrame:CGRectMake(x, y, kAppViewW, kAppViewH)];
        DYAppView *appView=[[[NSBundle mainBundle]loadNibNamed:@"DYAppView" owner:nil options:nil]lastObject];
        appView.frame=CGRectMake(x, y, kAppViewW, kAppViewH);
        //        appView.backgroundColor=[UIColor redColor];
        [self.view addSubview:appView];
        
        DYAppInfo *appInfo=self.appList[i];
        
        
        
        UIImageView *icon= appView.iconVIew;
        icon.image=appInfo.image;
        
        UILabel *lable=appView.lable;
        lable.text=appInfo.name;
       
        
        
        UIButton *button= appView.button;
        
       
        button.tag=1;
        [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchDragInside];
        
    }
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)click:(UIButton *)button{
    NSLog(@"x");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
