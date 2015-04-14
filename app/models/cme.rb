class Cme < ActiveRecord::Base
  # attr_accessible :title, :body

  require 'nokogiri'
  require 'open-uri'

  self.table_name = 'cmes'

  attr_accessible :month,
                  :product,
                  :last,
                  :change,
                  :priorsettle,
                  :open,
                  :high,
                  :low,
                  :volume,
                  :hilowlimit,
                  :updated
                  
    class << self

	    
	def import_data(url)
		
			doc = Nokogiri::HTML(open(url))

      records = []

#doc.css('table#quotesFuturesProductTable1').xpath("//span[contains(@class,'cmeNoWrap')]")[0]

      doc.css('table#quotesFuturesProductTable1 tr').each_with_index do |record, t|
        records << Cme.new(
          month:      		record.xpath("//span[contains(@class,'cmeNoWrap')]")[t].text,
          product:  		"CAISO NP-15 Off-Peak",
          last:       		record.xpath("//td[contains(@id,'_last')]")[t].text,
          change:       	record.xpath("//td[contains(@id,'_change')]")[t].text,
          priorsettle:      record.xpath("//td[contains(@id,'priorSettle')]")[t].text,
          open:      		record.xpath("//td[contains(@id,'_open')]")[t].text,
          high:      		record.xpath("//td[contains(@id,'_high')]")[t].text,
          low:      		record.xpath("//td[contains(@id,'_low')]")[t].text,
          volume:      		record.xpath("//td[contains(@id,'volume')]")[t].text,
          hilowlimit:       record.xpath("//td[contains(@id,'highLowLimits')]")[t].text,
          updated:      	record.xpath("//td[contains(@id,'updated')]")[t].text,
        )


	        Cme.import(records)
        
	        records = []

	        puts "Imported record #{t} at #{Time.now}"
	  end
	        
    end
  end



end
