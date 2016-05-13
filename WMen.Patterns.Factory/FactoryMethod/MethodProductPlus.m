//
//  MethodProductPlus.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "MethodProductPlus.h"

@implementation MethodProductPlus
@synthesize numA;
@synthesize numB;

-(NSString *)returnResult{
    return [NSString stringWithFormat:@"%lf",numA+numB];
}

@end
