//
//  ViewController.m
//  Collection_view
//
//  Created by Varsha on 3/20/19.
//  Copyright © 2019 Varsha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDelegate,UICollectionViewDataSource>


@end

@implementation ViewController
NSArray *image_array;
NSArray *label_array;
@synthesize Collection_view;
- (void)viewDidLoad {
    [super viewDidLoad];
    image_array=[[NSArray alloc]initWithObjects:@"fb.png",@"fb.png",@"fb.png" ,@"fb.png",@"fb.png",@"fb.png",@"fb.png",@"fb.png" ,@"fb.png" ,@"fb.png" ,@"fb.png" ,@"fb.png" ,@"fb.png" ,@"fb.png" ,@"fb.png" ,nil];
    label_array=[[NSArray alloc]initWithObjects:@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB",@"FB", nil];
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section

{
    return image_array.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell_id" forIndexPath:indexPath];
    
    UIImageView *Image_View = (UIImageView *)[cell viewWithTag:100];
    
    UILabel *Label = (UILabel *)[cell viewWithTag:101];
    
    Image_View.image = [UIImage imageNamed:[image_array objectAtIndex:indexPath.row]];
   
    Label.text=[label_array objectAtIndex:indexPath.row];
    
    return cell;
}

@end
