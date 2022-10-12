//
//  BNREmployee.m
//  Learn
//
//  Created by ByteDance on 2022/10/7.
//

#import "BNREmployee.h"
//编译器需要知道BNRAsset类的具体定义才能处理BNREmployee.m文件，所以治理需要导入BNRAsset.h，而不是使用@class
#import "BNRAsset.h"
@implementation BNREmployee
- (double) yearsOfEmployment
{
    //判断是否有一个非nil的hireDate
    if(self.hireDate) {
        NSDate* now = [NSDate date];
        //NSTimeInterval是double类型
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        //根据秒数计算年数
        return secs / 31557600.0;  //除以每年的秒数
    } else {
        return 0;
    }
}
//覆盖了父类的方法
- (float) bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}
//为了更好的跟踪BNREmployee实例的释放状况，覆盖descricption方法和dealloc方法
- (NSString*) description
{
    return [NSString stringWithFormat:@"<Emplyee %u : %u in assets>", self.employeeID, self.valueOfAssets];
}
- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}
//实例变量的存方法
- (void) setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}
//实例变量的取方法
- (NSArray *) assets
{
    return [_assets copy];
}
- (void) addAssets:(BNRAsset*) a
{
    //assets是否为nil？
    if(!_assets) {
        //如果为空，创建数组
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}
- (unsigned int) valueOfAssets
{
    unsigned int sum = 0;
    for(BNRAsset* a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}
@end
