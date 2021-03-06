//
//  PostSNSViewController.m
//  PostSNS
//
//  Created by 長谷川瞬哉 on 2016/03/30.
//  Copyright © 2016年 長谷川瞬哉. All rights reserved.
//

#import "PostSNSViewController.h"

@implementation PostSNSViewController

+ (void)showActionSheet:(UIViewController*)vc ActivityItems:(NSArray*)activityItems ExcludedActivityTypes:(NSArray *)excludedActivityTypes {
	
	UIActivityViewController* ac = [[UIActivityViewController alloc]initWithActivityItems:activityItems applicationActivities:nil];
	ac.popoverPresentationController.sourceView = vc.view;
	// 表示しない機能をリストに入れる
	if (excludedActivityTypes) {
		ac.excludedActivityTypes = excludedActivityTypes;
	}
	
	[vc presentViewController:ac animated:YES completion:nil];
}
@end
