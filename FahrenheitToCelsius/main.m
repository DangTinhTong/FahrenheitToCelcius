//
//  main.m
//  FahrenheitToCelsius
//
//  Created by admin on 10/18/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

// -------Interface section
@interface Fahrenheit : NSObject
{
    float FahrenheitF ;
}
-(void) displayMessag;
-(void) setFahrenheit: (float) valueF;
-(float) FahrenheitF;
-(float) convertFahrenheitToCelsius;

@end
// ------Implementation section
@implementation Fahrenheit

-(void) displayMessag {
    NSLog(@"This is a program to convert from Fahrenheit to Celcius." );
}
-(void) setFahrenheit: (float) valueF
{
    FahrenheitF  = valueF ;
}

-(float) FahrenheitF{
    return FahrenheitF;
}
-(float) convertFahrenheitToCelsius {
    return (FahrenheitF-32)/(1.8);
}

@end
int main(int argc, const char * argv[]) {
   
    Fahrenheit *myFahrenheit = [[Fahrenheit alloc] init];
    [myFahrenheit displayMessag];
    [myFahrenheit setFahrenheit:27];
    NSLog(@" The result is %2.1f C",[myFahrenheit convertFahrenheitToCelsius]);
    

    return 0;
}
