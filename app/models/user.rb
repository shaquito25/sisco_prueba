class User < ApplicationRecord

    #Algunas validaciones a los inputs
    
    validates :persona, presence: true
    validates :documento, presence: true
   
    validates_format_of :nombre, :with => /([A-Z]{1}[a-zñáéíóú]+[\s]*)+/, presence: true
    validates_format_of :corre, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, presence: true

    validates :telefono_principal, 
              :length => { :minimum => 11, :maximum => 11, :message => "Por favor ingrese un numero valido"},
              presence: true 

    validates :telefono_secundario,
              :length => { :minimum => 11, :maximum => 11, :message => "Por favor ingrese un numero valido"}
              :allow_blank 
    

    validates :emision, presence: true
    validates :vencimiento, presence: true

end
