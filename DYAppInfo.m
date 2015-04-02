//
//  DYAppInfo.m
//  06.九宫格软件管理
//
//  Created by YOU on 15/3/29.
//  Copyright (c) 2015年 you. All rights reserved.
//

#import "DYAppInfo.h"

@implementation DYAppInfo
@synthesize image=_image;
-(instancetype)initWithDict:(NSDictionary *)dict  {
    self=[super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return  self;
}

+(instancetype)appInfoWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}

+(NSArray *)appList{
    NSArray *array=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil ]];
    NSMutableArray *arrayM=    [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arrayM addObject:[self appInfoWithDict:dict]];
    }
    return arrayM;
}

-(UIImage *)image{
    if (_image==nil) {
        _image=[UIImage imageNamed:self.icon];
    }
    return _image;
}
@end
