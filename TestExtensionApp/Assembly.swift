import UIKit
import Typhoon

class TestService: NSObject {

    func printName() {
        print("Name")
    }
    
}

class Assembly: TyphoonAssembly {

    dynamic func getViewController() -> AnyObject {
        return TyphoonDefinition.withClass(ViewController.self) { definition in
            definition.injectProperty("testService", with: self.getTestService())
        }
    }
    
    dynamic func getTestService() -> AnyObject {
        return TyphoonDefinition.withClass(TestService.self) { definition in
        }
    }

    dynamic func getShareViewController() -> AnyObject {
        return TyphoonDefinition.withClass(ShareViewController.self) { definition in
            definition.injectProperty("testService", with: self.getTestService())
        }
    }

}
