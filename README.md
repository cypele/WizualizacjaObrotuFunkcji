# Projekt 29: Bryła Obrotowa

## Opis Projektu

Projekt, stworzony przez Adama Cyplińskiego i Jakuba Miturę, ma na celu obliczanie objętości i pola powierzchni bryły obrotowej wraz z wizualizacją obrotu.

### Bryła Obrotowa

Bryła obrotowa to figurą geometryczna ograniczoną powierzchnią powstałą z obrotu płaskiej figury wokół prostej (osi obrotu).

### Objętość i Pole Powierzchni

Objętość bryły obrotowej powstałej z obrotu wykresu funkcji \(y=f(x)\), gdzie \(x \in [a, b]\) wokół osi OX.
![image](https://github.com/cypele/WizualizacjaObrotuFunkcji/assets/124002511/1f712212-65ac-4c6c-82b5-37c076a509e6)

Pole powierzchni bryły obrotowej powstałej z obrotu wykresu funkcji \(y=f(x)\), gdzie \(x \in [a, b]\) wokół osi OX.
![image](https://github.com/cypele/WizualizacjaObrotuFunkcji/assets/124002511/63ea9c06-21f3-4ebd-b02d-0a4577acb173)

### Obrót wokół Osi OX

Do obrotu funkcji wokół osi OX wykorzystano trójwymiarową macierz obrotu. Do obliczeń całkowych użyto metody trapezów.
![image](https://github.com/cypele/WizualizacjaObrotuFunkcji/assets/124002511/cd2e501e-a525-4001-81a7-ddae3aa900db)

## Kluczowe Części Kodu i Funkcjonalności
![image](https://github.com/cypele/WizualizacjaObrotuFunkcji/assets/124002511/3b58aaa6-a668-4059-b9dc-449ce8d71392)

- Zadeklarowanie osi współrzędnych, funkcji wejściowej do obrotu oraz wektora współrzędnych do zaznaczenia punktów na trójwymiarowym wykresie.
- Użycie pętli for do zadeklarowania wektora obrotu, który zmienia się z zadaną dokładnością w odpowiednim zakresie kątów. Pomnożenie wektora współrzędnych przez wektor obrotu daje wektor vr, który zawiera współrzędne po obrocie.
- Przypisanie odpowiednich wartości do wektora vr, umożliwiając uzyskanie współrzędnych dla każdej osi osobno.
- Narysowanie funkcji obróconej o daną dokładność w każdym obiegu pętli, co daje pełny obraz figury powstałej z obrotu funkcji wejściowej.
- Na końcu skryptu, przy użyciu wcześniej opracowanych funkcji opartych na wzorach teoretycznych, obliczenie pola powierzchni oraz objętości bryły na zadanym przedziale.

### Przykładowy Kod

```matlab
%algorytm obrotu funkcji wokół osi OX
 %theta = zakres obrotu naszej funkcji
 for theta = 0:2/pi:2*pi
     %deklaracja wektoru obrotu
     R = [1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)];
     %wektor współrzędnych po 0obrocie o 0.01 stopnia
     vr=v*R;
     
     %przypisanie odpowiednich wspórzędnych do właściwych osi
     x=vr(:,1);
     y=(vr(:,2))/(sqrt(2));
     z=(vr(:,3))/(sqrt(2));
     
     %Rysowanie funkcji po odpowiednim obrocie
     figure(1)
     subplot(2,1,2)
     plot3(x,y,z); grid on; hold on
     xlabel('x-axis')
     ylabel('y-axis')
     zlabel('z-axis')
     title('Wykres funkcji po obrocie')
     axis([a-2 b+2 a-2 b+2 a-2 b+2]);
    
 end


%Obliczanie objętości oraz pola powierzchnii na podstawie własnych funkcji
%calka oraz calka2
V=pi*calka(a,b)
S=2*pi*calka2(a,b)

```

## Przykładowe Wyniki

Dla funkcji wejściowej \(y = \sin(\pi x \frac{2}{5})\) w przedziale [0, 5], uzyskano następujące wyniki:

- Analityczne Wyniki:
  - Objętość (\(V\)): 7.8539
  - Pole Powierzchni (\(S\)): 24.4291

- Wyniki z MATLAB:
  - Objętość (\(V\)): 7.8540
  - Pole Powierzchni (\(S\)): 24.4291

![image](https://github.com/cypele/WizualizacjaObrotuFunkcji/assets/124002511/61f81a21-ede8-498a-9d64-503346bfb1cc)


## Podsumowanie

Skrypt pomyślnie wizualizuje bryłę obrotową uzyskaną poprzez obrót funkcji wejściowej. Obliczone pole powierzchni i objętość są zgodne z wynikami analitycznymi, co potwierdza poprawność implementacji.

## Jak Używać

1. Sklonuj repozytorium.
2. Zmodyfikuj `funkcja_wejsciowa` w przykładowym kodzie na swoją funkcję.
3. Uruchom skrypt w MATLABie, aby zobaczyć wizualizację i obliczyć bryłę obrotową.

Zachęcam do zgłaszania problemów lub sugestii poprzez otwarcie nowego zgłoszenia w repozytorium. Twoja współpraca jest mile widziana!
