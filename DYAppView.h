//
//  DYAppView.h
//  06.九宫格软件管理
//
//  Created by YOU on 15/4/4.
//  Copyright (c) 2015年 you. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DYAppInfo;
@interface DYAppView : UIView

+(instancetype)appView;

@property(nonatomic,strong) DYAppInfo *appInfo;
@end
