class CovidsController < ApplicationController
  # GET /covids
  def index
    @months = Date::ABBR_MONTHNAMES.compact.each_with_index.collect { |m| m }
    Covid.destroy_all
    @months.each do |el|
      Covid.create!(month: el, deaths: rand(1250..4000), recovered: rand(2250..6000))
    end

    @covids = Covid.all

    render json: @covids
  end

  private

  # Only allow a list of trusted parameters through.
  def covid_params
    params.fetch(:covid, {})
  end
end
    