import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    



    override func viewDidLoad() {
        super.viewDidLoad()
     
        do {
        
        let audioPlayer = Bundle.main.path(forResource: "classic_hurt", ofType: "mp3")
            
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer!) as URL)

        }
        catch {
            
            //ERROR
        }
        
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


