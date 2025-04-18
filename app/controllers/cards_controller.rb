# frozen_string_literal: true

class CardsController < ApplicationController
  def index
    @cards = Card.all

    @cards = Card.where(status: params[:status]) if params[:status].present?

    @cards = Card.where(priority: params[:priority]) if params[:priority].present?

    if params[:status].present? && params[:priority].present?
      @cards = Card.where(status: params[:status], priority: params[:priority])
    end

    respond_to do |format|
      format.turbo_stream
      format.html
    end
  end
end
