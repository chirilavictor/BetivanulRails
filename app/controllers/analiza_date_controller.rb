class AnalizaDateController < ApplicationController
  def preluare_date1
  end

  def preluare_date2
  	if params[:tip_bautura] == "bere"
  		@rezultat = "Câte beri ai băut în ultima oră?"
  		#valorile pentru metoda radio_button_tag, cazul in care este selectat Bere
  		@radio_name = :nr_beri
  		@radio_value1 = "una"
  		@radio_value2 = "doua"
  		@radio_value3 = "trei"
  		@radio_value4 = "4+"
  		#valorile pentru metoda label_tag, cazul in care este selectat Bere
  		@label_name1 = :una
  		@label_content1 = "1 (o bere)"
  		@label_name2 = :doua
  		@label_content2 = "2 (două beri)"
  		@label_name3 = :trei 
  		@label_content3 = "3 (trei beri)"
  		@label_name4 = :patru
  		@label_content4 = "4+ (patru sau mai multe)"

  		elsif params[:tip_bautura] == "vin"
  			@rezultat = "Cât vin ai băut în ultima oră?"
  			#valorile pentru metoda radio_button_tag, cazul in care este selectat Vin
	  		@radio_name = :cant_vin
	  		@radio_value1 = "100ml"
	  		@radio_value2 = "200ml"
	  		@radio_value3 = "400ml"
	  		@radio_value4 = "600ml+"
	  		#valorile pentru metoda label_tag, cazul in care este selectat Vin
	  		@label_name1 = :ml100 #daca scriu invers primesc eroare. Se pare ca simbolurile nu pot incepe cu cifre
	  		@label_content1 = "100 ml"
	  		@label_name2 = :ml200
	  		@label_content2 = "200 ml"
	  		@label_name3 = :ml400 
	  		@label_content3 = "400 ml"
	  		@label_name4 = :ml600
	  		@label_content4 = "600 ml sau mai mult"

  		elsif params[:tip_bautura] == "tarie"
  			@rezultat = "Câtă tărie ai băut în ultima oră?"
	  		#valorile pentru metoda radio_button_tag, cazul in care este selectat Tarie
	  		@radio_name = :cant_tarie
	  		@radio_value1 = "50ml"
	  		@radio_value2 = "100ml"
	  		@radio_value3 = "200ml"
	  		@radio_value4 = "400ml+"
	  		#valorile pentru metoda label_tag, cazul in care este selectat Tarie
	  		@label_name1 = :ml50
	  		@label_content1 = "50 ml"
	  		@label_name2 = :ml100
	  		@label_content2 = "100 ml"
	  		@label_name3 = :ml200 
	  		@label_content3 = "200 ml"
	  		@label_name4 = :ml400
	  		@label_content4 = "400 ml sau mai mult"
  	end
  end

  def afisare_analiza
  	nivel1 = [
						  "Vad ca abia ai inceput, baga un pahar cu apa(250 ml) ca sa poti rezista.",
						  "Esti la inceput, seara este lunga si nu se stie nicodata cum se termina. Bea un pahar cu apa(250ml).",
						  "Petrecerea abia a inceput, dai pe gat un pahar cu apa(250 ml).",
						  "1 pahar cu apa(250 ml) si poti continua petrecerea.",
						  "Ce? Ti-e frica ca te-ai imbatat numai de la atat? Baga repede un pahar cu apa(250ml).",
						  "Inca esti treaz si poti vorbi coerent. Daca vrei sa ramai asa baga un pahar cu apa(250ml)."
						  ]
  	nivel2 = [
						  "Te-ai incalzit un pic, nu-i asa? Baga 2 pahare cu apa(500ml)",
						  "Parca vad cum zambesti si te distrezi. Repede 2 pahare cu apa(500ml)",
						  "Petrecerea este in toi, ia 2 pahare cu apa(500ml) ca sa ramana asa."
						  ]
		nivel3 = [
						  "Vezi ca incepi sa scapi lucrurile de sub control! Bea 3 pahare cu apa(750ml).",
						  "Ca sa nu-ti plesneasca capul maine bea 3 pahare cu apa(750ml).",
						  "Vrei sa fii clampa in jumate de ora? Bea repede 3 pahare cu apa(750ml)",
						  "Acu-i acu, ori te faci clampa ori te mentii. 3 pahare cu apa(750ml)",
						  "Ce faci? O iei pe ulei? Baga repede 3 pahare cu apa(750ml)",
						  "Te incingi cam tare, nu crezi? 3 pahare cu apa(750ml)",
						  "Mai usurel cu alcoolul - 3 pahare cu apa(750ml)",
						  "Mai ai un nivel si te trimit acasa - 3 pahare cu apa(750ml)",
						  "Vrei sa dormi pe canapea? 3 pahare cu apa(750ml)",
						  "Vrei scandal? - 3 pahare cu apa(750ml)",
						  "Daca nu bei acum 3 pahare cu apa(750ml) maine ai sa bati covoarele.",
						  "Incetisor cu alcoolul - 3 pahare cu apa(750ml)"
						  ]
		nivel4 = [
						  "Bai, eu it spun sa bei apa, tu ce bei acolo?Repede 4 pahare cu APA(1L)",
						  "Esti beat manga. Bea repede 4 pahare cu apa(1L).",
						  "Fara comentarii - 4 pahare cu apa(1L).",
						  "Auzi betivanule, baga 4 pahare cu apa(1L).",
						  "Daca nu cazi pana la bucatarie si adormi acolo, bea 4 pahare cu apa(1L).",
						  "Probabil maine nici nu o sa-ti aduci aminte pe unde ai umblat. Bea 4 pahare cu apa.",
						  "E clar te-a scapat femeia de sub control. 4 pahare cu apa(1L)",
						  "Esti clampa - 4 pahare cu apa(1L)",
						  "Ai scapat de sub control - 4 pahare cu apa(1L)",
						  "Te-ai imbata ca porcul - 4 pahare cu apa(1L)",
						  "Hai sa-ti spun ceva: glumele tale sunt proaste. 4 pahare cu apa(1L).",
						  "Deci in seara asta dormi pe canapea. 4 pahare cu apa(1L)",
						  "Maine trebuie sa cumperi flori si bomoane - 4 pahare cu apa(1L)",
						  "Mda, si acum ce vrei? Bea 4 pahare cu apa(1L) si culca-te.",
						  "Pe scurt: 4 pahare cu apa(1L) si la culcare.",
						  "Mai ai bani de taxi? 4 pahare cu apa(1L)",
						  "Da-te jos de pe bar ca esti clampa - 4 pahare cu apa(1L).",
						  "In juma' de ora imbratisezi buda - 4 pahare cu apa(1L)",
						  "Treci acasa ca te-ai imbata, porcule - 4 pahare cu apa(1L)",
						  "Boule asa cum ai stiut sa bei alcool asa bea acum 4 pahare cu apa(1L)",
						  "Ma mir ca mai poti tasta - 4 pahare cu apa(1L)"
						]

		rand_nivel1 = nivel1[rand(0..5)]
  	rand_nivel2 = nivel2[rand(0..2)]
  	rand_nivel3 = nivel3[rand(0..11)]
  	rand_nivel4 = nivel4[rand(0..20)]

	  if params[:nr_beri] == "una" #daca scriu params[@radio_name] nu merge
	  		@rezultat2 = rand_nivel1
	  	elsif params[:nr_beri] == "doua"
	  		@rezultat2 = rand_nivel2
	  	elsif params[:nr_beri] == "trei"
	  		@rezultat2 = rand_nivel3
	  	elsif params[:nr_beri] == "4+"
	  		@rezultat2 = rand_nivel4

	  	elsif params[:cant_vin] == "100ml"
	  		@rezultat2 = rand_nivel1
	  	elsif params[:cant_vin] == "200ml"
	  		@rezultat2 = rand_nivel2
	  	elsif params[:cant_vin] == "400ml"
	  		@rezultat2 = rand_nivel3
	  	elsif params[:cant_vin] == "600ml+"
	  		@rezultat2 = rand_nivel4

	  	elsif params[:cant_tarie] == "50ml"
	  		@rezultat2 = rand_nivel1
	  	elsif params[:cant_tarie] == "100ml"
	  		@rezultat2 = rand_nivel2
	  	elsif params[:cant_tarie] == "200ml"
	  		@rezultat2 = rand_nivel3
	  	elsif params[:cant_tarie] == "400ml+"
	  		@rezultat2 = rand_nivel4

	  end

  end

end
