

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
            
         print("RED got pressed")
        print(sender.currentTitle) //gives the title of current button pressed
        playsound(soundName:sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
                }
        
    }
    func playsound(soundName: String)
    {
        let url=Bundle.main.url(forResource: soundName, withExtension: "wav")
        player=try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }

}

