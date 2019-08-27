//
//  ZPPerson.m
//  自定义copy方法
//
//  Created by 赵鹏 on 2019/8/19.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ZPPerson.h"

@implementation ZPPerson

- (id)copyWithZone:(NSZone *)zone
{
    ZPPerson *person = [[ZPPerson allocWithZone:zone] init];
    person.age = self.age;
    person.weight = self.weight;

    return person;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age = %d, weight = %f", self.age, self.weight];
}

@end
