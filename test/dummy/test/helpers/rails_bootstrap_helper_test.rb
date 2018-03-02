require 'test_helper'

class RailsBootstrapHelperTest < ActionView::TestCase
  include SimpleForm::ActionViewExtensions::FormHelper
  tests RailsBootstrapHelper::Helper

  def test_status_tag
    assert_equal '<span class="badge badge-secondary">Default</span>', status_tag("Default")
    assert_equal '<span class="badge badge-success">Success</span>', status_tag("Success", level: 'success')
    assert_equal '<span class="badge badge-warning">Warning</span>', status_tag("Warning", level: 'warning')
    assert_equal '<span class="badge badge-important">Important</span>', status_tag("Important", level: 'important')
    assert_equal '<span class="badge badge-info">Info</span>', status_tag("Info", level: 'info')
    assert_equal '<span class="badge badge-inverse">Inverse</span>', status_tag("Inverse", level: 'inverse')
    assert_equal '<span class="badge badge-inverse custom">Custom Class</span>', status_tag("Custom Class", level: 'inverse', class: "custom")
    assert_equal '<span id="custom" class="badge badge-inverse">Custom ID</span>', status_tag("Custom ID", level: 'inverse', id: "custom")
  end

  def test_badge_tag
    assert_equal '<span class="badge badge-secondary">Default</span>', badge_tag("Default")
    assert_equal '<span class="badge badge-success">Success</span>', badge_tag("Success", level: 'success')
    assert_equal '<span class="badge badge-warning">Warning</span>', badge_tag("Warning", level: 'warning')
    assert_equal '<span class="badge badge-danger">Danger</span>', badge_tag("Danger", level: 'danger')
    assert_equal '<span class="badge badge-info">Info</span>', badge_tag("Info", level: 'info')
    assert_equal '<span class="badge badge-primary">Primary</span>', badge_tag("Primary", level: 'primary')
    assert_equal '<span class="badge badge-primary custom">Custom Class</span>', badge_tag("Custom Class", level: 'primary', class: "custom")
    assert_equal '<span id="custom" class="badge badge-primary">Custom ID</span>', badge_tag("Custom ID", level: 'primary', id: "custom")
  end

  def test_pill_badge_tag
    assert_equal '<span class="badge badge-pill badge-secondary">Default</span>', pill_badge_tag("Default")
    assert_equal '<span class="badge badge-pill badge-success">Success</span>', pill_badge_tag("Success", level: 'success')
  end

  def test_button_link_to
    assert_equal '<a class="btn btn-secondary" href="http://google.com">Default</a>', button_link_to("Default", "http://google.com")
    assert_equal '<a class="btn btn-link" href="http://google.com">Link</a>', button_link_to("Link", "http://google.com", level: 'link')
    assert_equal '<a class="btn btn-secondary btn-small" href="http://google.com">Small Button</a>', button_link_to("Small Button", "http://google.com", size: 'small')
    assert_equal '<a class="btn btn-success" href="http://google.com">Default Success</a>', button_link_to("Default Success", "http://google.com", level: 'success')
    assert_equal '<a class="btn btn-success btn-small" href="http://google.com">Default Small Success</a>', button_link_to("Default Small Success", "http://google.com", size: 'small', level: 'success')
    assert_equal '<a class="btn btn-success btn-small custom" href="http://google.com">Custom Class Default Small Success</a>', button_link_to("Custom Class Default Small Success", "http://google.com", class: "custom", size: 'small', level: 'success')
    assert_equal '<a id="custom" class="btn btn-success btn-small" href="http://google.com">Custom ID Default Small Success</a>', button_link_to("Custom ID Default Small Success", "http://google.com", id: "custom", size: 'small', level: 'success')
  end

  def test_button_link_to_outline
    assert_equal '<a class="btn btn-outline-secondary" href="http://google.com">Default</a>', button_link_to("Default", "http://google.com", level: 'outline-secondary')
  end

  def test_icon_button_link_to
    assert_equal '<a class="btn btn-secondary" href="http://google.com"><span class="icon icon-plus"></span> Default</a>', icon_button_link_to("Default", "http://google.com", icon: 'plus')
    assert_equal '<a class="btn btn-secondary btn-small" href="http://google.com"><span class="icon icon-plus"></span> Small Button</a>', icon_button_link_to("Small Button", "http://google.com", size: 'small', icon: 'plus')
    assert_equal '<a class="btn btn-success" href="http://google.com"><span class="icon icon-plus"></span> Default Success</a>', icon_button_link_to("Default Success", "http://google.com", level: 'success', icon: 'plus')
    assert_equal '<a class="btn btn-success btn-small" href="http://google.com"><span class="icon icon-plus"></span> Default Small Success</a>', icon_button_link_to("Default Small Success", "http://google.com", size: 'small', level: 'success', icon: 'plus')
    assert_equal '<a class="btn btn-success btn-small custom" href="http://google.com"><span class="icon icon-plus"></span> Custom Class Default Small Success</a>', icon_button_link_to("Custom Class Default Small Success", "http://google.com", class: "custom", size: 'small', level: 'success', icon: 'plus')
    assert_equal '<a id="custom" class="btn btn-success btn-small" href="http://google.com"><span class="icon icon-plus"></span> Custom ID Default Small Success</a>', icon_button_link_to("Custom ID Default Small Success", "http://google.com", id: "custom", size: 'small', level: 'success', icon: 'plus')
  end

  def test_icon_tag
    assert_equal '<span class="icon icon-star"></span>', icon_tag('star')
    assert_equal '<span class="icon icon-star text-success"></span>', icon_tag('star', class: 'text-success')
    assert_equal '<span class="icon icon-star" style="color:white"></span>', icon_tag('star', style: 'color:white')
    assert_equal '<span class="icon icon-star text-success" style="color:white"></span>', icon_tag('star', class: 'text-success', style: 'color:white')
  end
end
