# HZCoding

一句话 利用runtime轻松实现 归档解档

```
#import "NSObject+HZCoding.h"

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [self HZ_encode:aCoder];
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        [self HZ_decode:aDecoder];
    }return self;
}
```

还可这么干

#import "Person.h"
#import "NSObject+HZCoding.h"

@implementation Person

HZCodingImplementation

@end
