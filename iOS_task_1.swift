class Zwierzak { // klasa reprezentuj¹ca zwierzaka
    var imie : String
    var gatunek : String 
    var zdjecie : String?
    /*
    // metoda "descripton" zwracaj¹ca ci¹g znaków, "zakomentowana" ze wzglêdu na u¿ycie protoko³u "CustomStringConvertible"
    func description() -> String {
        if(zdjecie != nil){
            return imie + " - " + gatunek + " - Posiada zdjêcie";
        }
        return imie + " - " + gatunek + " - Nie posiada zdjêcia";
    }
    */
    // metoda do inicjalizacji/zmiany parametrów 
    func inicjalizacja(imie : String, gatunek : String, zdjecie : String? = nil){
        self.imie = imie;
        self.gatunek = gatunek;
        if(zdjecie != nil) {
            self.zdjecie = zdjecie;
        }
    }
    
    // initializator (konstruktor)
    init(imie : String = "Unknown", gatunek : String = "Unknown", zdjecie : String? = nil){
        self.imie = imie;
        self.gatunek = gatunek;
        self.zdjecie = zdjecie;
    }
}

// Implementacja protoko³u "CustomStringConvertible", dzia³a zamiast metody description
extension Zwierzak: CustomStringConvertible {
    var description: String {
        if(self.zdjecie != nil){
            return imie + " - " + gatunek + " - Posiada zdjêcie";
        }
        return imie + " - " + gatunek + " - Nie posiada zdjêcia";
    }
}

let zwierz = Zwierzak(imie: "Bartek", gatunek: "kot");

let zwierzaczek = Zwierzak();

print(zwierz)

zwierz.inicjalizacja(imie:"Mariusz", gatunek:"ogorek");

print(zwierz)

