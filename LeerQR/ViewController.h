//
//  ViewController.h
//  LeerQR
//
//  Created by Alberto Gómez del Pino on 04/07/12.
//  Copyright (c) 2012 UPV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface ViewController : UIViewController <ZBarReaderDelegate>

-(IBAction)lector:(id)sender;

- (void) imagePickerController: (UIImagePickerController*) reader didFinishPickingMediaWithInfo: (NSDictionary*) info;


@end
