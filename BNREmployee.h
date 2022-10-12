//
//  BNREmployee.h
//  Learn
//
//  Created by ByteDance on 2022/10/7.
//

#import "BNRPerson.h"
@class BNRAsset;  //告诉编译器程序有BNRAsset类，不要报错
NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson
{
    NSMutableArray* _assets;
}
@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate* hireDate;
@property (nonatomic) NSString* lastName;
@property (nonatomic) BNRPerson* spouse;
@property (nonatomic) NSMutableArray* children;
@property (nonatomic, copy) NSArray* assets;
- (double) yearsOfEmployment; //计算工龄
- (void) addAssets:(BNRAsset*) a; //添加所有物品的方法
- (unsigned int) valueOfAssets; //计算所有拥有物品的总价值
@end

NS_ASSUME_NONNULL_END
