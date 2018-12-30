# coding: utf-8
module RailsBootstrapHelper
  module Helper
    def info_tag(text)
      content_tag(:i, '', class: 'icon-info-sign', rel: 'tooltip', title: text) + " "
    end

    def status_tag(status, options = {})
      klass = ["badge"]
      if options.has_key?(:level)
        klass << "badge-#{options.delete(:level).to_s}"
      else
        klass << "badge-secondary"
      end
      klass << options[:class].strip.split(/\s+/) unless options[:class].blank?
      options[:class] = klass.flatten.join(" ")
      content_tag(:span, status, options)
    end

    def badge_tag(status, options = {})
      klass = ["badge"]
      if options.has_key?(:level)
        klass << "badge-#{options.delete(:level).to_s}"
      else
        klass << "badge-secondary"
      end
      klass << options[:class].strip.split(/\s+/) unless options[:class].blank?
      options[:class] = klass.flatten.join(" ")
      content_tag(:span, status, options)
    end

    def pill_badge_tag(status, options = {})
      klass = ["badge badge-pill"]
      if options.has_key?(:level)
        klass << "badge-#{options.delete(:level).to_s}"
      else
        klass << "badge-secondary"
      end
      klass << options[:class].strip.split(/\s+/) unless options[:class].blank?
      options[:class] = klass.flatten.join(" ")
      content_tag(:span, status, options)
    end

    def badge_link_to(name, url, options = {})
      badge = content_tag(:span, options.delete(:count).presence || "", class: "badge")
      link_to((name + " " + badge).html_safe, url, options)
    end

    def icon_link_to(text, url, options)
      icon = options.delete(:icon) if options.has_key?(:icon)
      icon_tag = ''
      if icon
        icon_klass = ["icon icon-#{icon}"]
        if options.has_key?(:white)
          icon_klass << ["icon-white"]
          options.delete(:white)
        end
        icon_tag = content_tag(:span, '', class: icon_klass.join(' '))
      end
      link_to (icon_tag + " #{text}").html_safe, url, options
    end

    def button_link_to(text, url, options = {})
      klass = ["btn"]
      if options.has_key?(:level)
        klass << "btn-#{options[:level]}"
        options.delete(:level)
      else
        klass << "btn-secondary"
      end
      if options.has_key?(:size)
        klass << "btn-#{options[:size]}"
        options.delete(:size)
      end

      klass << options[:class].strip.split(/\s+/) unless options[:class].blank?
      options[:class] = klass.flatten.join(" ")
      link_to text, url, options
    end

    def icon_button_link_to(text, url, options)
      klass = [""]
      icon = options.delete(:icon) if options.has_key?(:icon)
      icon_tag = ''
      if icon
        klazz = ["icon icon-#{icon}"]
        if options.has_key?(:white)
          klazz << ["icon-white"]
          options.delete(:white)
        end
        icon_tag = content_tag(:span, '', class: klazz.join(' '))
      end

      klass << options[:class].strip.split(/\s+/) unless options[:class].blank?
      options[:class] = klass.flatten.join(" ")
      button_link_to (icon_tag + " #{text}").html_safe, url, options
    end

    def icon_tag(icon, options = {})
      klass = ["icon icon-#{icon}"]
      klass << options[:class].strip.split(/\s+/) unless options[:class].blank?
      options[:class] = klass.flatten.join(" ")
      content_tag(:span, '', class: options[:class], style: options[:style])
    end

    def inline_svg(path)
      file = File.open("app/assets/images/#{path}", "rb")
      raw file.read
    end

    def nav_link(name, path)
      content_tag :li, link_to(name, path, class: 'nav-link'), class: 'nav-item'
    end
  end
end
