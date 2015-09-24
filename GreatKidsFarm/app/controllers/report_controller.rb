class ReportController < ApplicationController
  def index
    @images = Dir.glob("app/assets/images/slider/*.png")
  end

  def acknowledgement
    render 'acknowledgement'
  end

  def download
    send_file 'Great_Kids_Farm-Elysian_Energy.pdf', type: 'application/pdf', x_sendfile: true
  end

  def images
    @images = Dir.glob("app/assets/images/slider/*.png")
  end

end
