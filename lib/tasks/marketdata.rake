namespace :marketdata do
  task :download_test, [:url] => [:environment] do |t, args|
  
      Cme.import_data("http://www.cmegroup.com/trading/energy/electricity/caiso-np15-ez-gen-hub-5-mw-off-peak-calendar-month-day-ahead-lmp-swap-futures.html")

  end
  
end