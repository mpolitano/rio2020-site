class StaticPagesController < ApplicationController
  def about
  end

  def speakers
  end

  def sponsors
  end

  def contact
  end

  def cfp
  end

  def paper_format
  end

  def download_paper_format
    file_hash = {
      'LaTeX2e' => 'LaTeX2e.zip',
      'Office2007' => 'Office2007.zip',
      'word-97-2003' => 'word-97-2003.zip',
      'templateLNCS' => 'templateLNCS.odt'
    }
    filename = params[:id]

    send_file(
      "#{Rails.root}/app/assets/images/paper-format/#{file_hash.fetch(filename)}",
      filename: file_hash.fetch(filename),
      type: 'application/zip')
  end


  def download_cpf
    send_file(
      "#{Rails.root}/app/assets/images/CFP-CACIC2019.pdf",
      filename: "CFP-CACIC2019.pdf",
      type: "application/pdf")
  end

  def download_accepted_paper
    send_file(
      "#{Rails.root}/app/assets/images/ListadoArticulosAceptados.pdf",
      filename: "ListadoArticulosAceptados.pdf",
      type: "application/pdf")
  end

  def accommodation_rio
    send_file(
      "#{Rails.root}/app/assets/images/tarifasHotel2019.pdf",
      filename: "tarifasHotel2019.pdf",
      type: "application/pdf",
      disposition: "inline; filename=tarifasHotel2019.pdf")

  end

  # def materials_course2
  #   send_file(
  #     "#{Rails.root}/app/assets/images/course2.pdf",
  #     filename: "course2.pdf",
  #     type: "application/pdf",
  #     disposition: "inline; filename=course.pdf")

  # end

 

  # def download_schedule_wpdp
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWPDP.pdf",
  #     filename: "cronogramaWPDP.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWPDP.pdf')
  # end

  # def download_schedule_wtiae
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWTIAE.pdf",
  #     filename: "cronogramaWTIAE.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWTIAE.pdf')
  # end

  # def download_schedule_computacion_grafica
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaComputacionGrafica.pdf",
  #     filename: "cronogramaComputacionGrafica.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaComputacionGrafica.pdf')
  # end

  # def download_schedule_wpsstr
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWPSSTR.pdf",
  #     filename: "cronogramaWPSSTR.pdf",
  #     type: "application/pdf",
  # end

  # def download_schedule_wsi
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWSI.pdf",
  #     filename: "cronogramaWSI.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWSI.pdf')
  # end

  # def download_schedule_wiei
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWIEI.pdf",
  #     filename: "cronogramaWIEI.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWIEI.pdf')
  # end



  def workshops
  end

  def accommodation
  end
  
end
