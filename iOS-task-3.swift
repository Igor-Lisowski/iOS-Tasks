import Foundation
let input = "2x3x4 1x2x3 2x2x2"
if(!input.isEmpty) { // warunek, dane musza nie byc puste
	
	print("Dane wejsciowe nie sa puste.")
	print("Dane wejsciowe to: \(input)")
	let packages = input.components(separatedBy: " ")
	var sum1 = 0
	var sum2 = 0
	for package in packages {
		let wsp = package.components(separatedBy: "x")
	
		// obliczanie powierzchni papieru do pakowania
		let x:Int! = Int(wsp[0]); // wysokosc
		let y:Int! = Int(wsp[1]); // szerokosc
		let z:Int! = Int(wsp[2]); // dlugosc
	
		let p1 = x * y; // pole 1 sciany
		let p2 = x * z; // pole 2 sciany
		let p3 = y * z; // pole 3 sciany
	
		// pole najmniejszej sciany
		let smallest = min(p1, p2, p3);
	
		// powierzchnia
		let p = 2*p1 + 2*p2 + 2*p3 + smallest;
	
		// calkowita powierzchnia
		sum1 = sum1 + p;
	
		// obliczanie dlugosci sznurka do obwiazania
		let obw1 = 2*z + 2*y;
		let obw2 = 2*x + 2*y;
		let obw3 = 2*x + 2*z;
	
		// najmniejszy obwod
		let shortest = min(obw1, obw2, obw3);
	
		// dlugosc sznurka
		let s = x*y*z + shortest;
	
		// calkowita dlugosc sznurka
		sum2 = sum2 + s;
		
	}
	
	print("Suma powierzchni papieru potrzebnego do pakowania: \(sum1)")

	print("Suma dlugosc sznurka potrzebnego do zapakowania: \(sum2)")
	
}
else { // jesli dane sa puste, wypisujemy odpowiedni komunikat
	print("Dane wejsciowe sa puste. Popraw je.");
}