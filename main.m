//
//  main.m
//  Learn
//
//  Created by ByteDance on 2022/10/7.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个数组，用来包含多个BNREmployee对象
        NSMutableArray* employees = [[NSMutableArray alloc] init];
        for(int i = 0; i < 10; i++) {
            //创建BNREmployee的实例
            BNREmployee* mikey = [[BNREmployee alloc] init];
            mikey.heightInMeters = 1.8 - i / 10.0;
            mikey.weightInKilos = 90 + i;
            mikey.employeeID = i;
            //将创建的BNREmployee实例添加到数组中
            [employees addObject:mikey];
        }
        NSMutableArray* allAssets = [[NSMutableArray alloc] init];
        //创建10个BNRAsset对象
        for(int i = 0; i < 10; i++) {
            //创建一个BNRAsset对象
            BNRAsset* asset = [[BNRAsset alloc] init];
            //为实例变量赋值
            NSString* currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            [allAssets addObject:asset];
            //生成0至9之间的随机整数（包含0和9）
            NSUInteger randomIndex = random() % [employees count]; //员工的个数10
            //取出相应的BNREmployee对象
            BNREmployee* randomEmployee = [employees objectAtIndex:randomIndex];
            //将BNRAsset对象付给该BNREmployee对象
            [randomEmployee addAssets:asset];
        }
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        //删除索引为5的员工
        [employees removeObjectAtIndex:5];
        
        //这里只是删除了索引为5的员工，如果其拥有物品，不会将物品删除，因为在allAssets数组里面，还有它所拥有物品的所有权
        
        //所以打印allAssets所有物品的内容时，会全部打印出来，而索引为5的员工所拥有的物品的owner，随着员工的释放，而被置为nil
        
        NSLog(@"allAssets: %@",allAssets);
        NSLog(@"Giving up ownership of arrays");
        //将存放员工的数组置为nil
        employees = nil;
    }
    return 0;
}

