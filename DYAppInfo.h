//
//  DYAppInfo.h
//  06.九宫格软件管理
//
//  Created by YOU on 15/3/29.
//  Copyright (c) 2015年 you. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYAppInfo : NSObject
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong)NSString *icon;

@property(nonatomic,	strong,readonly) UIImage *image;


-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)appInfoWithDict:(NSDictionary *)dict;

+(NSArray *)appList;
@end
