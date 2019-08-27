//
//  ViewController.m
//  自定义copy方法
//
//  Created by 赵鹏 on 2019/8/19.
//  Copyright © 2019 赵鹏. All rights reserved.
//

//为了营造MRC环境，先要在TARGETS中的Build Settings中把ARC由YES改为NO。
#import "ViewController.h"
#import "ZPPerson.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ZPPerson *person = [[ZPPerson alloc] init];
    person.age = 20;
    person.weight = 50;
    
    /**
     对person对象调用"copy"方法就会产生一个全新的对象person1，它与person对象是两个完全不一样的对象。更改person对象的属性值不会影响person1对象，同样，更改person1对象的属性值也不会影响person对象；
     对对象调用"copy"方法其实就是调用该对象的"copyWithZone:"方法，所以应该在该对象类里面撰写"copyWithZone:"方法，不然的话程序会闪退。
     */
    ZPPerson *person1 = [person copy];
    person1.age = 30;
    
    NSLog(@"%@", person);
    NSLog(@"%@", person1);
    NSLog(@"%p", person);
    NSLog(@"%p", person1);
    
    [person release];
}


@end
