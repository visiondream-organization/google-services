//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//  ViewController.m
//  IdentityExample
//
#import "ViewController.h"
#import "GMPIdentityAPI.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)signInTapped:(id)sender {
  GHIContext *context = [GHIContext sharedInstance];

  [context.identity startSignInWithCompletion:^(NSString *accessToken,
                                                GHIIdentityData *identityData,
                                                NSError *error) {
    if (!error) {
      NSLog(@"Access Token: %@", accessToken);
      NSLog(@"User ID: %@", identityData.userID);
      NSLog(@"User Email: %@", identityData.userEmail);
    } else {
      NSLog(@"Error: %@", error.localizedDescription);
    }
  }];
}

@end