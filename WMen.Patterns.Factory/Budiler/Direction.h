//
//  Direction.h
//  WMen
//
//  Created by kyjun on 16/5/16.
//
//

#import <Foundation/Foundation.h>
#import "Budiler.h"
/**
 *  指导者
 */
@interface Direction : NSObject

-(void)directionBudiler:(id<Budiler>)builder;

@end
