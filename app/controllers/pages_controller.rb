class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end
  def error
  end
  def faqs
  end
  def terms
  end
  def privacy
  end
end
