class TextsController < ApplicationController
   def index
   end

   def send_message
      @text = Text.create(content: params[:content], recepient_id: params[:recepient_id], sender_id: params[:sender_id])
      @texts = Text.all.order('created_at DESC')
      respond_to do |format|
         format.js { @texts }
      end
   end

   def send_text
      @texts = Text.all
   end
end
