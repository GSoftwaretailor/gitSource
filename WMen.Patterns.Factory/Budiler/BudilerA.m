//
//  BudilerA.m
//  WMen
//
//  Created by kyjun on 16/5/16.
//
//

#import "BudilerA.h"

@implementation BudilerA
@synthesize numA;
@synthesize numB;

-(void)plus{
    NSLog(@" BudilerA %lf",numA+numB);
}

-(void)sub{
     NSLog(@" BudilerA %lf",numA-numB);
}

@end
