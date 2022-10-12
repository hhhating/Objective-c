//
//  BNRPerson.h
//  Learn
//
//  Created by ByteDance on 2022/10/7.
//

#import <Foundation/Foundation.h>
 
NS_ASSUME_NONNULL_BEGIN
 
@interface BNRPerson : NSObject
//BNRPerson类有两个属性
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;
 
//{
//    //BNRPerson类拥有两个实例变量
//    float _heightInMeters;  //身高
//    int _weightInKilos;     //体重
//}
//BNRPerson类拥有计算Body Mass Index的方法
-(float) bodyMassIndex;
@end
NS_ASSUME_NONNULL_END
 
