//
//  Person.h
//  自适应
//
//  Created by lanou3g on 15/8/10.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,retain)NSString *name;
@property (nonatomic,retain)NSString *gender;
@property (nonatomic,retain)NSString *age;
@property (nonatomic,retain)NSString *hobby;
@property (nonatomic,retain)NSString *phone;

//model 最好不要付给图片;
@property (nonatomic,retain)NSString *imageName;



@end
