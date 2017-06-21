//
//  ViewController.m
//  0620
//
//  Created by yesway on 2017/6/21.
//  Copyright © 2017年 yesway. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageRoundedCorner.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    imageView.center = CGPointMake(200, 300);
    UIImage *anotherImage = [UIImage imageNamed:@"image"];
    
    imageView.image = [anotherImage imageAddCornerWithRadius:50 andSize:imageView.bounds.size];
 
    [self.view addSubview:imageView];
    
    
//    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(120, 10, 80, 80)];
//    view2.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view2];
//    
//    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view2.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(40, 40)];
//    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
//    maskLayer.frame = view2.bounds;
//    maskLayer.path = maskPath.CGPath;
//    view2.layer.mask = maskLayer;
//    
//    
//    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(120, 100, 100, 50)];
//    label.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:label];
//    
//    UIBezierPath *labelmaskPath = [UIBezierPath bezierPathWithRoundedRect:label.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
//    CAShapeLayer *labelmaskLayer = [[CAShapeLayer alloc] init];
//    labelmaskLayer.frame = label.bounds;
//    labelmaskLayer.path = labelmaskPath.CGPath;
//    label.layer.mask = labelmaskLayer;
    
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(120, 100, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:button.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(40, 40)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = button.bounds;
    maskLayer.path = maskPath.CGPath;
    button.layer.mask = maskLayer;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
