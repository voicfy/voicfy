class VoiceoversController < ApplicationController
	def index

		@voiceovers = Voiceover.all

	end

	def show

		@voiceover = Voiceover.find(params[:id])

  end

	def new

			@voiceover = Voiceover.new

  end

	def create
    # @voiceover.errors
		# render plain: params[:voiceover].inspect
    # render plain: params[:voiceover].inspect
    # render plain: params[:voiceover].permit

    @voiceover = Voiceover.new(voiceover_params)
    # @voiceover = Voiceover.new([:voiceover])

		if(@voiceover.save)
		redirect_to voiceovers_path
    else
      puts @voiceover.errors.messages
			render 'new'
		end
  end

  def edit
    @voiceover = Voiceover.find(params[:id])
  end

  def update
    @voiceover = Voiceover.find(params[:id])
    if(@voiceover.update(@voiceover_params))
      redirect_to @voiceover
    else
      render 'edit'
    end
  end

  def destroy
    @voiceover = voiceover.find(params[:id])
    @voiceover.destroy

    redirect_to voiceovers_path
  end

  private def voiceover_params
	 params.require(:voiceover).permit(:firstname, :lastname, :street, :city_code, :city, :state, :country, :email)
	end
end
