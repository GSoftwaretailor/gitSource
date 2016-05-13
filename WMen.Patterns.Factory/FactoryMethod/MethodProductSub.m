//
//  MethodProductSub.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "MethodProductSub.h"

@implementation MethodProductSub
@synthesize numA;
@synthesize numB;

-(NSString *)returnResult{
       return [NSString stringWithFormat:@"%lf",numA-numB];
}

@end
