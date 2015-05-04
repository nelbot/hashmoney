module SiteHelper
  def resource_name
    :brand
  end

  def resource
    @resource ||= Brand.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:brand]
  end

  def influencer_resource_name
    :influencer
  end

  def influencer
    Influencer.new
  end
end
