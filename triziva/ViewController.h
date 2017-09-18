//
//  ViewController.h
//  triziva
//
//  Created by Caleb Arendse on 9/17/17.
//  Copyright © 2017 Caleb Arendse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *imo;
- (void)logMsg:(NSString*)msg;
@end

