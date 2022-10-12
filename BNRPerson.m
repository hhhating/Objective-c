//
//  BNRPerson.m
//  Learn
//
//  Created by ByteDance on 2022/10/7.
//

#import "BNRPerson.h"
 
@implementation BNRPerson
//BNRPerson类拥有计算Body Mass Index的方法
-(float) bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end
