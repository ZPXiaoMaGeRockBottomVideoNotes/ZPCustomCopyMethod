//
//  ZPPerson.h
//  自定义copy方法
//
//  Created by 赵鹏 on 2019/8/19.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZPPerson : NSObject<NSCopying>

@property (nonatomic, assign) int age;
@property (nonatomic, assign) double weight;

@end

NS_ASSUME_NONNULL_END
