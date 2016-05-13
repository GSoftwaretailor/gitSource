//
//  AbstractProduct.h
//  WMen
//
//  Created by kyjun on 16/5/13.
//
//

#import <Foundation/Foundation.h>

@protocol AbstractProduct <NSObject>
@property(nonatomic,assign) double numA;
@property(nonatomic,assign) double numB;

-(NSString*)operatePlus;
-(NSString*)operateSub;

@end
