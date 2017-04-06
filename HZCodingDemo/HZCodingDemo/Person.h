//
//  Person.h
//  HZCodingDemo
//
//  Created by DM on 2017/4/6.
//  Copyright © 2017年 HZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <NSObject+HZCoding.h>

typedef NS_ENUM(NSInteger, PersonSex) {
    PersonSexMan = 1 < 0 ,
    PersonSexWom = 1 < 1 ,
    PersonSexUnk = 1 < 2
};

@interface Person : NSObject

@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) int age;
@property(nonatomic,assign) BOOL isBig;
@property(nonatomic,assign) PersonSex sex;

@end
