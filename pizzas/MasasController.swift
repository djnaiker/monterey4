import UIKit

class MasasController: UIViewController {

    @IBOutlet weak var tamanoPizza: UILabel!
    var masas : [String] = ["Delgada","Crujiente","Gruesa"]
    var tamanoElegido : String = "Grande"
    var masaElegida : String = ""
    
    override func viewWillAppear(animated: Bool) {
        tamanoPizza.text = "Tamaño: \(tamanoElegido)"
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
        let sigVista=segue.destinationViewController as! QuesosController
        sigVista.tamanoElegido = tamanoElegido
        if (masaElegida != "") {
            sigVista.masaElegida = masaElegida
        }
        else {
            sigVista.masaElegida = "Delgada"
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masas.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return masas[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        masaElegida = masas[row]
    }
}
