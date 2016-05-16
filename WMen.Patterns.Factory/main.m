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
#import "SingleTon.h"
#import "Singleton2.h"
#import "Direction.h"
#import "BudilerA.h"
#import "BudilerB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
#pragma mark =====================================================  简单工厂
        //一个工厂一个方法、动态参数 一个产品
        
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
        //多个工厂一个方法    生产多个产品
        
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
        //多个工厂多个方法多个产品
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
        
#pragma mark =====================================================  单例模式
        SingleTon* singleTon1 = [[SingleTon alloc]init];
        singleTon1.strA = @"singleTon1>strA";
        singleTon1.strB = @"singleTon1>strB";
        NSLog(@"%@",[singleTon1 description]);
        
        NSLog(@"===============================================");
        SingleTon* singleTon2 = [SingleTon shareAuhtorization];
        singleTon2.strA = @"singleTon2>strA";
        singleTon2.strB = @"singleTon2>strB";
        NSLog(@"%@",[singleTon2 description]);
        NSLog(@"%@",[singleTon1 description]);
        
        NSLog(@"===============================================");
        SingleTon* singleTon3 = [SingleTon  allocWithZone:nil];
        singleTon3.strA = @"singleTon3>strA";
        singleTon3.strB = @"singleTon3>strB";
        NSLog(@"%@",[singleTon3 description]);
        NSLog(@"%@",[singleTon2 description]);
        NSLog(@"%@",[singleTon1 description]);
        
        NSLog(@"===============================================");
        Singleton2* singleTon21 = [[Singleton2 alloc]init];
        singleTon21.strA = @"singleTon21>strA";
        singleTon21.strB = @"singleTon21>strB";
        NSLog(@"%@",[singleTon21 description]);
        
        NSLog(@"===============================================");
        Singleton2* singleTon22 = [Singleton2 shareAuhtorization];
        singleTon22.strA = @"singleTon22>strA";
        singleTon22.strB = @"singleTon22>strB";
        NSLog(@"%@",[singleTon22 description]);
        NSLog(@"%@",[singleTon21 description]);
        
        NSLog(@"===============================================");
        Singleton2* singleTon23 = [Singleton2  allocWithZone:nil];
        singleTon23.strA = @"singleTon23>strA";
        singleTon23.strB = @"singleTon23>strB";
        NSLog(@"%@",[singleTon23 description]);
        NSLog(@"%@",[singleTon22 description]);
        NSLog(@"%@",[singleTon21 description]);
        
        #pragma mark =====================================================  生产者模式
        
        Direction* direction = [[Direction alloc]init];
        BudilerA* buidlerA = [[BudilerA alloc]init];
        buidlerA.numA = 8.f;
        buidlerA.numB = 2.f;
        BudilerB* buidlerB = [[BudilerB alloc]init];
        buidlerB.numA = 80.f;
        buidlerB.numB = 20.f;
        
        [direction directionBudiler:buidlerA];
        [direction directionBudiler:buidlerB];
    }
    return 0;
}
