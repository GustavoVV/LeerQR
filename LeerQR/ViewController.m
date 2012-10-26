//
//  ViewController.m
//  LeerQR
//
//  Created by Alberto Gómez del Pino on 04/07/12.
//  Copyright (c) 2012 UPV. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


-(IBAction)lector:(id)sender{

    ZBarReaderViewController *reader = [ZBarReaderViewController new];

    reader.readerDelegate = self;
    
    [self presentModalViewController:reader animated:YES];

}

- (void) imagePickerController: (UIImagePickerController*) reader didFinishPickingMediaWithInfo: (NSDictionary*) info {
    // Ocultamos el lector del código de barras.
    [reader dismissModalViewControllerAnimated:YES];
    
    // Recuperamos los datos.
    id<NSFastEnumeration> results = [info objectForKey:ZBarReaderControllerResults];
    
    ZBarSymbol *symbol = nil;
    for (symbol in results)
        // Recorremos la lista de resultados hasta
        // que encontremos el primer código de barras.
        break;
    
    // Obtenemos el texto leído del código de barras.
    NSString *barcode = symbol.data;
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:barcode]];
    
}









- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
