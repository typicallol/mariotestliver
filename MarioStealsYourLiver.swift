import UIKit
import AVKit
import PlaygroundSupport

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize audio player
        if let sound = Bundle.main.path(forResource: "song", ofType: "wav") {
            self.audioPlayer = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
            self.audioPlayer.prepareToPlay()
        }
        
        // Start the alert loop
        startAlertLoop()
    }
    
    func startAlertLoop() {
        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { [weak self] timer in
            self?.displayAlert()
        }
        timer?.fire()
    }
    
    func displayAlert() {
        // Declare Alert message
        let dialogMessage = UIAlertController(title: "3days", message: "3 days until mario steals your liver", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "ok", style: .default) { (action) -> Void in
            print("Ok button tapped")
        }
        
        // Create Cancel button with action handler
        let cancel = UIAlertAction(title: "cancel", style: .cancel) { (action) -> Void in
            print("Cancel button tapped")
            
            // Play another sound
            if let sound = Bundle.main.path(forResource: "itsnotaoption", ofType: "wav") {
                self.audioPlayer = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
                self.audioPlayer.prepareToPlay()
                self.audioPlayer.play()
            }
        }
        
        // Add OK and Cancel button to dialog message
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        
        // Present dialog message to user
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
    func deleteRecord() {
        print("Delete record function called")
    }
}

// Present the view controller in the playground
let viewController = ViewController()
PlaygroundPage.current.liveView = viewController
