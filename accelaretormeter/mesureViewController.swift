

import UIKit
import CoreMotion

class mesureViewController: UIViewController {
    
    @IBOutlet weak var awaImageView: UIImageView!
    
    var acceraretionX: Double!
    var motionManeger = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(motionManeger.isAccelerometerAvailable)
        
        if motionManeger.isAccelerometerAvailable {
            
            motionManeger.accelerometerUpdateInterval = 0.01
            
            motionManeger.startAccelerometerUpdates(to: OperationQueue.current!, withHandler: { (data, error) in
                self.acceraretionX = (data?.acceleration.x)!
                
                self.awaImageView.center.x = self.awaImageView.center.x - CGFloat(self.acceraretionX*20)
                if self.awaImageView.frame.origin.x < 40{
                    self.awaImageView.frame.origin.x = 40
                }else if self.awaImageView.frame.origin.x>260{
                    self.awaImageView.frame.origin.x = 260
                }
            })
        }
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewContoroller1:resultViewController = segue.destination as! resultViewController
        resultViewContoroller1.accerationX = self.acceraretionX
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
