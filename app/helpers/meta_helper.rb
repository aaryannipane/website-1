# encoding: UTF-8
module MetaHelper

  def meta_title(title)
    content_for(:meta_title, title)
  end

  def meta_description(description)
    content_for(:meta_description, description)
  end

  def meta_keywords(keywords, arr = [])
    arr.each{ |i|
      next if i.nil?
      keywords += ',' + i.split.join(', ')
    }
    content_for(:meta_keywords, keywords)
  end

  def meta_og_image(url)
    content_for(:meta_og_image, url)
  end

  ### print meta methods, use it in templates

  def yield_meta_site_name
    "diegodurs"
  end

  def yield_meta_title
    content_for?(:title) ? content_for(:meta_title) : "Diego d'Ursel"
  end

  def yield_meta_keywords
    content_for?(:keywords) ? content_for(:meta_keywords) : ""
  end

  def yield_meta_description
    content_for?(:description) ? content_for(:meta_description) : "Deejay House, Dance, Hip hop, Diego d'Ursel est résident au You Night Club et partenaire de Charles VBV."
  end

  def yield_meta_og_image
    content_for?(:og_image) ? content_for(:meta_og_image) : ""
  end
end