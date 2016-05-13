//
//  SimpleProductSub.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "SimpleProductSub.h"

@interface SimpleProductSub ()

@end

@implementation SimpleProductSub
@synthesize numA;
@synthesize numB;

-(NSString *)returnResult{
    return [NSString stringWithFormat:@"%lf",numA-numB];
}

@end
