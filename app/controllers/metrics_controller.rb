# frozen_string_literal: true

class MetricsController < ApplicationController
  def index
    @metrics = Metric.where(category: params[:category]).group_by_day(:date).sum(:value)

    respond_to do |format|
      format.turbo_stream
      format.html
    end
  end
end
