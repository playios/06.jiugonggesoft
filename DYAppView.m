//
//  DYAppView.m
//  06.九宫格软件管理
//
//  Created by YOU on 15/4/4.
//  Copyright (c) 2015年 you. All rights reserved.
//

#import "DYAppView.h"
#import "DYAppInfo.h"

@interface DYAppView ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *lable;
@property (weak, nonatomic) IBOutlet UIButton *button;
@end

@implementation DYAppView
+(instancetype)appView{
    return [[[NSBundle mainBundle]loadNibNamed:@"DYAppView" owner:nil options:nil]lastObject];
}
-(void)setAppInfo:(DYAppInfo *)appInfo{
    _appInfo=appInfo;
    self.lable.text=appInfo.name;
    self.iconView.image=appInfo.image;
}

-(IBAction)click:(UIButton *)button{
    NSLog(@"x");
}
@end
