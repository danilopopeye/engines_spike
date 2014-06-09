module Site
  module ApplicationHelper
    def site_asset_path
      original = 'site/application'

      if request.original_url.include? 'parceiro'
        'partners/parceiro/' << original
      else
        original
      end
    end
  end
end
