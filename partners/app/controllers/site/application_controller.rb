module Site
  class ApplicationController < ActionController::Base
    before_filter :partner_view_path

    private

    def partner_view_path
      if request.original_url.include? 'parceiro'
        prepend_view_path 'app/views/partners/parceiro'
      end
    end
  end
end
