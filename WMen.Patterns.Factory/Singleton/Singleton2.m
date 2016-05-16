//
//  Singleton2.m
//  WMen
//
//  Created by kyjun on 16/5/16.
//
//

#import "Singleton2.h"

@implementation Singleton2


static Singleton2* shareAuhtor;

+(instancetype)shareAuhtorization{
    @synchronized(self){
        if(shareAuhtor == nil){
            shareAuhtor = [[self alloc] init];
        }
    };
    return shareAuhtor;
}

-(instancetype)init{
    self = [super init];
    if(self){
        
    }
    return self;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    @synchronized(self){
        if(shareAuhtor == nil)
        {
            shareAuhtor = [super allocWithZone:zone];
        }
    };
    return shareAuhtor;
}

-(id)copy{
    return self;
}

-(id)mutableCopy{
    return self;
}

-(NSString *)description{
    
    
    return    [NSString stringWithFormat:@"%@\n%@",self.strA,self.strB];
    
}

@end
