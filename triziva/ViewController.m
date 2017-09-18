//
//  ViewController.m
//  triziva
//
//  Created by Caleb Arendse on 9/17/17.
//  Copyright © 2017 Caleb Arendse. All rights reserved.
//

#import "ViewController.h"
#include "log.h"
#include "sploit.h"
#include "zploit.h"
#include "drop_payload.h"

id vc;


@interface ViewController ()
- (IBAction)yolo:(id)sender;
- (IBAction)lmao:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
\

- (IBAction)yolo:(id)sender {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^(void){
        do_exploit();
        dispatch_async(dispatch_get_main_queue(), ^{
            _imo.enabled = true;
        });
    });

}

- (IBAction)lmao:(id)sender {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^(void){
        zivago();
    });
}
    
                   
- (void)logMsg:(NSString*)msg {
    NSLog(@"%@", msg);
    NSString* line = [msg stringByAppendingString:@"\n"];
}
                   
@end

void logMsg(char* msg) {
    NSString* str = [NSString stringWithCString:msg encoding:NSASCIIStringEncoding];
    [vc logMsg:str];
}
                   

