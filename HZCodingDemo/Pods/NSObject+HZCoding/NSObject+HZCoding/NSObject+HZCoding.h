
#import <Foundation/Foundation.h>

@interface NSObject (HZCoding)

-(void)HZ_encode:(NSCoder *)aCoder;
-(void)HZ_decode:(NSCoder *)aDecoder;

-(NSArray *)getAllProperties;

/* 获取对象的所有方法 */
-(NSArray *)getAllMethods;

/* 获取对象的所有属性和属性内容 */
-(NSDictionary *)getAllPropertiesAndVaules;

#define HZCodingImplementation \
-(void)encodeWithCoder:(NSCoder *)aCoder\
{\
    [self HZ_encode:aCoder];\
}\
-(instancetype)initWithCoder:(NSCoder *)aDecoder\
{\
    if (self = [super init]) {\
        [self HZ_decode:aDecoder];\
    }return self; \
}

@end
