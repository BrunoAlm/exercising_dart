/*
  Supondo que a populacao de um pais A seja da ordem de 80000 
  habitantes com uma taxa anual de crescimento de 3% e que a 
  populacao de B seja 200000 habitantes com uma taxa de crescimento de 1.5%.
  
  Faca um programa que calcule e escreva o numero de anos necessarios para
  que a populacao do pais A ultrapasse ou iguale a populacao do pais B
  mantidas as taxas de crescimento.
*/

void main() {
  double countryA = 80000, countryB = 200000;
  double rateA = 0.03, rateB = 0.015;
  double totalPopulationA = 0, totalPopulationB = 0;
  int totalYears = 0;

  do {
    countryA = countryA + (countryA * rateA);
    countryB = countryB + (countryB * rateB);
    totalYears++;
    totalPopulationA = countryA;
    totalPopulationB = countryB;
  } while (countryA <= countryB);
  print('''
   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  +
             A população total do país A foi: ${totalPopulationA.floor()} people 
             A população total do país B foi: ${totalPopulationB.floor()} people 
        Total de anos para que a população A alcance B: $totalYears years  
   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  +
  ''');
}
