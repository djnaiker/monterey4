
import UIKit

class QuesosController: UIViewController {

    var quesos : [String] = ["Mozzarela","Cheddar","Parmesano","Sin queso"]
    var tamanoElegido : String = "Grande"
    var masaElegida : String = "Crujiente"
    var quesoElegido : String = ""

    @IBOutlet weak var tamanoMasaPizza: UILabel!
    override func viewWillAppear(animated: Bool) {
        tamanoMasaPizza.text = "Tamaño: \(tamanoElegido) - Masa: \(masaElegida)"
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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! IngredientesController
        sigVista.tamanoElegido = tamanoElegido
        sigVista.masaElegida = masaElegida
        if (quesoElegido != "") {
            sigVista.quesoElegido = quesoElegido
        }
        else {
            sigVista.quesoElegido = "Mozzarela"
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return quesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        quesoElegido = quesos[row]
    }
}
