//
//  TableViewController.m
//  JSONParsing
//
//  Created by Varsha on 3/25/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController () <UITableViewDataSource,UITableViewDelegate>{
    NSString *file_path;
    NSString *info;
    NSArray *data_arr;
}
@end

@implementation TableViewController

//@synthesize info,file_path,arr;


//-(void)JsonFileToBeParsed
//{
//   // arr= [self JsonFromFile];
//    NSLog(@"%@",arr);
//}
//-(NSDictionary *)JsonFromFile
//{
  //  NSString *file_path=[[NSBundle mainBundle]pathForResource:@"countrylist" ofType:@"json"];
    //NSData *info=[NSData dataWithContentsOfFile:file_path];
    //return [NSJSONSerialization JSONObjectWithData:info options:kNilOptions error:nil];
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    file_path=[[NSBundle mainBundle]pathForResource:@"countrylist" ofType:@"json"];
    info=[[NSString alloc] initWithContentsOfFile:file_path encoding:NSUTF8StringEncoding error:nil];
    data_arr =[NSJSONSerialization JSONObjectWithData:[info dataUsingEncoding: NSUTF8StringEncoding] options:kNilOptions error:nil];
  //  NSArray *data_arr =[NSJSONSerialization JSObjectWithData:[info dataUsingEncoding: NSUTF8StringEncoding] options:kNilOptions error:nil];
}
    
    
  //  [self JsonFromFile];
   //NSLog(@"%@",@"%@",@"%"@name",@"labelcountrycode",label)
   // NSDictionary *dictionary = [self JsonFromFile];
 //   for(NSArray *data in dictionary)
 //   {
  //      NSString *name =[data replacementObject]
  //  }
 //   NSArray *restArray= [parse objectForKey:@"restaurants"];
   // Now you want to loop through that array and parse the structure like the following:
    
    //for (NSDictionary *restaurant in restArray){
      //  NSString* name = [restaurant objectForKey:@"name"];
        //NSDictionary* location = [restaurant objectForKey:"location"];
        //etc...
    //}
    

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return data_arr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary *dict = [data_arr objectAtIndex:indexPath.row];
    
    // Configure the cell...
    cell.labelname.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"name"]];
    cell.labelcountrycode.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"countryCode"]];
    cell.labelphonecode.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"phoneCode"]];
    cell.labelcurrencycode.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"currencyCode"]];
 
    NSString *imgstr = @"data.image/ipg;base64,";
    imgstr = [imgstr stringByAppendingString:[dict objectForKey:@"media"]];
    NSURL *url =[NSURL URLWithString:imgstr];
    NSData *data = [NSData dataWithContentsOfURL:url];
    cell.imgicon.image = [UIImage imageWithData:data];
    
    return cell;
}


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
