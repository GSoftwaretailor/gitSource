//
//  ImplementProductPlus.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "ImplementProductA.h"

@implementation ImplementProductA
@synthesize numA;
@synthesize numB;

-(NSString *)operatePlus{
    return  [NSString stringWithFormat:@"ImplementProductA:%lf",numA+numB];
}

-(NSString *)operateSub{
    return  [NSString stringWithFormat:@"ImplementProductA:%lf",numA-numB];
}

@end
