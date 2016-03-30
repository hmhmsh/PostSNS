//
//  ViewController.m
//  PostSNS
//
//  Created by 長谷川瞬哉 on 2016/03/30.
//  Copyright © 2016年 長谷川瞬哉. All rights reserved.
//

#import "ViewController.h"
#import "PostSNSViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	UIButton* button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
	button.backgroundColor = [UIColor lightGrayColor];
	[button setTitle:@"共有" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
}

- (void)push:(UIButton*)button
{
	NSMutableArray *activityItems = [[NSMutableArray alloc] init];
	[activityItems addObject: @"初期文字"];
	// [activityItems addObject: [NSURL URLWithString:@"投稿するURL"]];
//	[activityItems addObject: [UIImage imageNamed:@"初期画像"]];
	
	NSMutableArray* excludedActivityTypes = [[NSMutableArray alloc]init];
	[excludedActivityTypes addObject:UIActivityTypeAirDrop];
	[excludedActivityTypes addObject:UIActivityTypePostToTwitter];
	
	[PostSNSViewController showActionSheet:self ActivityItems:activityItems ExcludedActivityTypes:excludedActivityTypes];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
