require 'prawn'
require 'pry'
class Bilti < ActiveRecord::Base
  belongs_to :client
  belongs_to :company

  after_create :generate_invoice

  private
  	def generate_invoice
  		invoice_details = self
		Prawn::Document.generate("invoice.pdf") do
            text "Cargo India"
            move_down 20
            text "Transporting India | Transforming India"

            move_down 40
		    text invoice_details.tin_no
		    text invoice_details.office
		  	text invoice_details.h_0
		  	text invoice_details.consigner
		  	text invoice_details.consignee
		end  		
  	end
end
