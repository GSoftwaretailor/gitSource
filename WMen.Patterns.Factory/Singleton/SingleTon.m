//
//  SingleTon.m
//  WMen
//
//  Created by kyjun on 16/5/16.
//
//

#import "SingleTon.h"

@interface SingleTon ()

@end

@implementation SingleTon
static SingleTon* shareAuhtor;

+(instancetype)shareAuhtorization{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareAuhtor = [[self alloc] init];
    });
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
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        if(shareAuhtor == nil)
        {
            shareAuhtor = [super allocWithZone:zone];
        }
    });
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
