Rails.application.routes.draw do

  root             'analiza_date#preluare_date1'
  get 'date2'   => 'analiza_date#preluare_date2'
  get 'analiza'   => 'analiza_date#afisare_analiza'
  
end
