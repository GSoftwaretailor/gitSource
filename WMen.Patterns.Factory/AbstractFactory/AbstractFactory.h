//
//  AbstractFactory.h
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import <Foundation/Foundation.h>
@class ImplementProductA;
@class ImplementProductB;

@protocol AbstractFactory <NSObject>

-(ImplementProductA*)createProductA;
-(ImplementProductB*)createProductB;

@end
