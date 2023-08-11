import UIKit
import AVKit

@State var audioPlayer: AVAudioPlayer!

class ViewController: UIViewController {

let sound = Bundle.main.path(forResource: "song", ofType: "wav")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL("3 days.wav": sound!))
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


      
        displayAlert()
    }
    
    func displayAlert() {
        // Declare Alert message
        let dialogMessage = UIAlertController(title: "3days", message: "3 days until mario stealss your liver", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "ok", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
        })
        
        // Create Cancel button with action handlder
        let cancel = UIAlertAction(title: "cancel", style: .cancel) { (action) -> Void in
            print("Cancel button tapped")
            let sound = Bundle.main.path(forResource: "song", ofType: "wav")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL("itsnotaoption.wav": sound!))
            displayAlert()
    }
    
    func displayAlert() {
        // Declare Alert message
        let dialogMessage = UIAlertController(title: "3days", message: "3 days until mario stealss your liver", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "ok", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
        })
        
        // Create Cancel button with action handlder
        let cancel = UIAlertAction(title: "cancel", style: .cancel) { (action) -> Void in
            print("Cancel button tapped")
            
        }
        
        //Add OK and Cancel button to dialog message
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        
        // Present dialog message to user
        self.present(dialogMessage, animated: true, completion: nil)
        
    }
        }
        
        //Add OK and Cancel button to dialog message
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        
        // Present dialog message to user
        self.present(dialogMessage, animated: true, completion: nil)
        
    }
    
    func deleteRecord()
    {
        print("Delete record function called")
    }
    
}
