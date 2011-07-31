#import "MagicalRecordTestAppDelegate.h"
#import "Product.h"

@implementation MagicalRecordTestAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self createData];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor redColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [MagicalRecordHelpers cleanUp];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [MagicalRecordHelpers cleanUp];
}

- (void)createData
{
    Product *product = [Product createEntity];
    product.name = @"test";
}

@end
