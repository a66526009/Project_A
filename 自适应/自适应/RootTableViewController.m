//
//  RootTableViewController.m
//  自适应
//
//  Created by lanou3g on 15/8/10.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "RootTableViewController.h"
#import "Person.h"
@interface RootTableViewController ()

@property (nonatomic,retain)NSMutableArray *keyArray;
@property (nonatomic,retain)NSMutableDictionary *Dic;



@end

@implementation RootTableViewController

static NSString *const resuID=@"cell";

//导入数据   写在初始化方法中
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        NSString *path=[[NSBundle mainBundle] pathForResource:@"BJS150622" ofType:@"plist"];
        
        NSDictionary *dic=[[NSDictionary alloc]initWithContentsOfFile:path];
        self.keyArray= [NSMutableArray arrayWithArray:[dic allKeys]];
        
        [self.keyArray sortUsingSelector:@selector(compare:)];
        for (NSString *key in self.keyArray) {
            
            for (NSDictionary *pdic in dic[key]) {
                
                Person *model=[Person new];
                [model setValuesForKeysWithDictionary:pdic];
                NSMutableArray *array=[NSMutableArray new];
                [array addObject:model];
                [self.Dic setValue:array forKey:key];
            
                
            }
        }
     
        
    }
    return  self;
}








- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
