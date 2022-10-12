//
//  BNRAsset.m
//  Learn
//
//  Created by ByteDance on 2022/10/10.
//

#import "BNRAsset.h"

@implementation BNRAsset
- (NSString*) description     //改变%@的显示内容
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}
- (void) dealloc    //对象释放执行此方法
{
    NSLog(@"deallocating %@", self);
}
@end
