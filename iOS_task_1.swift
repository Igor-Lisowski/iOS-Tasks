class Zwierzak { // klasa reprezentujaca zwierzaka
    var imie : String
    var gatunek : String 
    var waga : Double // dodatkowa zmienna okreslajaca wage zwierzaka
    var plec : String // dodatkowa zmienna okreslajaca plec zwierzaka
    var zdjecie : String?
    /*
    // metoda "descripton" zwracajaca ciag znakow, "zakomentowana" ze wzgledu na uzycie protokolu "CustomStringConvertible"
    func description() -> String {
        if(zdjecie != nil){
            return imie + " - " + gatunek + " - \(waga) - " + plec + " - Posiada zdjêcie";
        }
        return imie + " - " + gatunek + " - \(waga) - " + plec + " - Nie posiada zdjêcia";
    }
    */
    
    // inicjalizator (konstruktor), metoda do inicjalizacji
    init(imie : String = "Unknown", gatunek : String = "Unknown", waga: Double = 0, plec: String = "Unknown", zdjecie : String? = nil){
        self.imie = imie;
        self.gatunek = gatunek;
        self.waga = waga;
        self.plec = plec;
        self.zdjecie = zdjecie;
    }
}

// Implementacja protokolu "CustomStringConvertible", dziala zamiast metody description
extension Zwierzak: CustomStringConvertible {
    var description: String {
        if(self.zdjecie != nil){
            return imie + " - " + gatunek + " - \(waga) - " + plec + " - Posiada zdjêcie";
        }
        return imie + " - " + gatunek + " - \(waga) - " + plec + " - Nie posiada zdjêcia";
    }
}

// Przykladowy sposob dzialania

let zwierz = Zwierzak(imie: "Bartek", gatunek: "kot", waga: 5, plec: "Samiec", zdjecie: "cos");

print(zwierz)

let zwierze = Zwierzak(imie: "Danuta", gatunek: "gekon", waga: 0.2,  plec: "Samica");

print(zwierze)

let zwierzaczek = Zwierzak();

print(zwierzaczek)