//
//  ImplementProductSub.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "ImplementProductB.h"

@implementation ImplementProductB
@synthesize numA;
@synthesize numB;

-(NSString *)operatePlus{
    return  [NSString stringWithFormat:@"ImplementProductB:%lf",numA+numB];
}

-(NSString *)operateSub{
    return  [NSString stringWithFormat:@"ImplementProductB:%lf",numA-numB];
}
@end
