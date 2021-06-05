class NotesController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index 
        puts "AQUI"
    end

    def new
        
    end

    def create
        puts "FOI #{params[:notes]}"
        @note = Note.new(title: notes_params[:title],
                         note: notes_params[:note],
                         priority: notes_params[:priority],
                         user_id: 5)
        @note.save
        puts "RESULTADO: #{@note.title}"
    end

    def notes_params
        params.require(:notes).permit(:title, :note, :priority)
    end
end
