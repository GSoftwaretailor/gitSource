//
//  main.m
//  WMen.Patterns.Factory
//
//  Created by kyjun on 16/5/13.
//
//

#import <Foundation/Foundation.h>
#import "SimpleFactory.h"
#import "MethodFactoryPlus.h"
#import "MethodFactorySub.h"
#import "MethodProductPlus.h"
#import "MethodProductSub.h"
#import "AbstractFactory.h"
#import "AbstractProduct.h"
#import "ImplementFactoryA.h"
#import "ImplementFactoryB.h"
#import "ImplementProductA.h"
#import "ImplementProductB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
#pragma mark =====================================================  简单工厂
        
        SimpleFactory* factory = [[SimpleFactory alloc]init];
        id<SimpleProtocolProduct> productPlus = [factory CreateWithEnum:SimpleOperatePlus];
        [productPlus setNumA:6.0];
        [productPlus setNumB:2.0];
        NSLog(@"%@",[productPlus returnResult]);
        
        productPlus = [factory CreateWithEnum:SimpleOperateSub];
        [productPlus setNumA:6.0];
        [productPlus setNumB:2.0];
        NSLog(@"%@",[productPlus returnResult]);
        
#pragma mark =====================================================  工厂方法
        
        id<MethodProtocolFactory> method = [[MethodFactoryPlus alloc]init];
        id<MethodProtocolProduct> product =  [method createProduct];
        [product setNumA:60.f];
        [product setNumB:20.f];
        NSLog(@"%@",[product returnResult]);
        
        method = [[MethodFactorySub alloc]init];
        product =  [method createProduct];
        [product setNumA:60.f];
        [product setNumB:20.f];
        NSLog(@"%@",[product returnResult]);
        
#pragma mark =====================================================  抽象工厂
        
        ImplementFactoryA* abstractA = [[ImplementFactoryA alloc]init];
        ImplementProductA* abstractProductA =   [abstractA createProductA];
        [abstractProductA setNumA:600.f];
        [abstractProductA setNumB:200.f];
        NSLog(@"%@",[abstractProductA operatePlus]);
        NSLog(@"%@",[abstractProductA operateSub]);
        
        ImplementFactoryB* abstractB = [[ImplementFactoryB alloc]init];
        ImplementProductB* abstractProductB =   [abstractB createProductB];
        [abstractProductB setNumA:600.f];
        [abstractProductB setNumB:200.f];
        NSLog(@"%@",[abstractProductB operatePlus]);
        NSLog(@"%@",[abstractProductB operateSub]);
        
    }
    return 0;
}
