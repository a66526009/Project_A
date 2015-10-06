//
//  Person.m
//  自适应
//
//  Created by lanou3g on 15/8/10.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "Person.h"

@implementation Person

//model  经常写的方法;重写init的初始化方法   重写打印的方法  kvc赋值给model他们的key不相同的出错的方法  set方法外界自定义赋值(封装时要在外界改变初始化值时可以使用)的方法  get方法外界调用属性的方法;  kvc赋值时的方法;

//
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([_imageName isEqualToString:key]) {
        _imageName =[NSString stringWithFormat:@"%@.jpg",_name];
    }
    
}




//他是根据字典的key 来查找model的属性;
-(void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues{
    for (NSString *key in [keyedValues allKeys]) {
//        
        [self setValue:keyedValues[key] forKey:key];
        if ([key isEqualToString:@"name"]) {
            _imageName=[NSString stringWithFormat:@"%@.jpg",_name];
        }
        
    }
}





-(NSString *)description{
    
    return [NSString stringWithFormat:@"name:%@,age:%@,gender:%@",_name,_age,_gender];
}




@end
