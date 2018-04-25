//
//  ViewController.m
//  Web View PruebaOS
//
//  Created by user138066 on 4/25/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *texto = @"<html><body><h2 align='center'>HTML ESTATICO</h2></body></html>";
    [_webView loadHTMLString:texto baseURL:nil];
    //NSURL *url = [NSURL URLWithString:@"http://www.el-nacional.com"];
    /*NSURLRequest *loadURL = [[NSURLRequest alloc]initWithURL:url];
    [_webView loadRequest:loadURL];*/
    //modificar el source de info.plist
    /*
     <string>UIInterfaceOrientationLandscapeRight</string>
     </array>
     <key>NSAppTransportSecurity</key>
     <dict>
     <key>NSExceptionDomains</key>
     <dict>
     <key>www.google.es</key>
     <dict>
     <key>   NSExceptionAllowsInsecureHTTPLoads</key>
     <true/>
     <key>NSIncludesSubdomains</key>
     <true/>
     </dict>
     </dict>
     </dict>
     </dict>
     </plist>
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)google:(id)sender{
    NSURL *url = [NSURL URLWithString:@"http://www.google.es"];
    NSURLRequest *loadURL = [[NSURLRequest alloc]initWithURL:url];
    [_webView loadRequest:loadURL];
}

-(IBAction)stack:(id)sender{
    NSURL *url = [NSURL URLWithString:@"http://stackoverflow.com"];
    NSURLRequest *loadURL = [[NSURLRequest alloc]initWithURL:url];
    [_webView loadRequest:loadURL];
}

-(IBAction)apple:(id)sender{
    NSURL *url = [NSURL URLWithString:@"https://developer.apple.com"];
    NSURLRequest *loadURL = [[NSURLRequest alloc]initWithURL:url];
    [_webView loadRequest:loadURL];
}

-(IBAction)raywenderlinch:(id)sender{
    NSURL *url = [NSURL URLWithString:@"https://www.raywenderlich.com"];
    NSURLRequest *loadURL = [[NSURLRequest alloc]initWithURL:url];
    [_webView loadRequest:loadURL];
}

@end
