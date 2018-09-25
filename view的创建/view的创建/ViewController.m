//
//  ViewController.m
//  view的创建
//
//  Created by apple on 15/12/15.
//  Copyright © 2015年 SUNCO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/**
 不管是用storyboard文件的方式还是用xib文件的方式创建的视图控制器，系统都会自动加载视图控制器的view，如果想自定义视图控制器的view的话就要重写此方法；
 当第一次使用视图控制器的view的时候，系统会自动调用此方法；
 如果要重写此方法来自定义view的话就不要在此方法里面写"[super loadView];"代码了；
 如果重写此方法来自定义视图控制器的view的话，则系统就不会加载storyboard文件或者xib文件了。
 */
-(void)loadView
{
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];  //创建本控制器的view
    self.view.backgroundColor = [UIColor redColor];
}

#pragma mark ————— 生命周期 —————
/**
 在视图控制器的view加载完毕以后（调用完loadview方法）就会调用这个方法（延迟加载）。
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
