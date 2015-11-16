
import UIKit

class ConfirmacionController: UIViewController {

    @IBOutlet weak var mensaje: UILabel!
    @IBOutlet weak var tamanoMasaPizza: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var misIngredientes: UILabel!
    @IBOutlet weak var confirmar: UIButton!
    var ingredientes: Int = 0
    var tamanoElegido : String = "Grande"
    var masaElegida : String = "Crujiente"
    var quesoElegido : String = "Mozzarela"
    var ingredientesElegidos : String = ""

    override func viewWillAppear(animated: Bool) {
        if ingredientes == 0 {
            mensaje.text = "Debes elegir por lo menos un ingrediente"
            tamanoMasaPizza.hidden = true
            queso.hidden = true
            misIngredientes.hidden = true
            confirmar.hidden = true
        }
        else {
            mensaje.text = "Revisa tu orden"
            tamanoMasaPizza.text = "Tamaño: \(tamanoElegido) - Masa: \(masaElegida)"
            queso.text = "Queso: \(quesoElegido)"
            misIngredientes.text = "Ingredientes:\n" + ingredientesElegidos
            if tamanoMasaPizza.hidden {
                tamanoMasaPizza.hidden = false
                queso.hidden = false
                misIngredientes.hidden = false
                confirmar.hidden = false
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
