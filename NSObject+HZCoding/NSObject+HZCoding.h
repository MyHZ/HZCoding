
#import <Foundation/Foundation.h>

@interface NSObject (HZCoding)

-(void)HZ_encode:(NSCoder *)aCoder;
-(void)HZ_decode:(NSCoder *)aDecoder;

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
