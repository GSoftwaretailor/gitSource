//
//  SimpleProductAdd.m
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import "SimpleProductAdd.h"

@interface SimpleProductAdd ()



@end

@implementation SimpleProductAdd
@synthesize numA;
@synthesize numB;

-(NSString *)returnResult{
    return [NSString stringWithFormat:@"%lf",numB+numA];
}

@end
