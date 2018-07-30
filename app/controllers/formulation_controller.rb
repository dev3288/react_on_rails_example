# frozen_string_literal: true

class FormulationController < ApplicationController
  layout "formulation"

  #Front Page /
  def index
    @formulation_form_props = { name: "Stranger" }
  end

  def submit
    @formulation_form_params = 'asdfas225252353df'

    pdf = WickedPdf.new.pdf_from_string('<h1>asdfas225252353df!</h1>')
    save_path = Rails.root.join('public','filename.pdf')
    @formulation_form_params = save_path
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
  end
end
