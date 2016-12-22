class Zwierzak { // klasa reprezentuj�ca zwierzaka
    var imie : String
    var gatunek : String 
    var zdjecie : String?
    /*
    // metoda "descripton" zwracaj�ca ci�g znak�w, "zakomentowana" ze wzgl�du na u�ycie protoko�u "CustomStringConvertible"
    func description() -> String {
        if(zdjecie != nil){
            return imie + " - " + gatunek + " - Posiada zdj�cie";
        }
        return imie + " - " + gatunek + " - Nie posiada zdj�cia";
    }
    */
    // metoda do inicjalizacji/zmiany parametr�w 
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

// Implementacja protoko�u "CustomStringConvertible", dzia�a zamiast metody description
extension Zwierzak: CustomStringConvertible {
    var description: String {
        if(self.zdjecie != nil){
            return imie + " - " + gatunek + " - Posiada zdj�cie";
        }
        return imie + " - " + gatunek + " - Nie posiada zdj�cia";
    }
}

let zwierz = Zwierzak(imie: "Bartek", gatunek: "kot");

let zwierzaczek = Zwierzak();

print(zwierz)

zwierz.inicjalizacja(imie:"Mariusz", gatunek:"ogorek");

print(zwierz)

