class Admin::AttachmentsController < Admin::BaseController
  before_action :set_attachment, only: [:show, :destroy]

  def index
    @attachments = Attachment.all
  end

  def show
  end

  def new
    @attachment = Attachment.new
  end

  def create
    @attachment = Attachment.new(attachments_params)

    respond_to do |format|
      if @attachment.save
        format.html { redirect_to admin_attachments_path, notice: 'Attachment was successfully created.' }
        format.json { render :show, status: :created, location: @attachment }
      else
        format.html { render :new }
        format.json { render json: @attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attachment.destroy
    respond_to do |format|
      format.html { redirect_to admin_attachment_url, notice: 'Attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_attachment
    @attachment = Attachment.find(params[:id])
  end

  def attachments_params
    params.require(:attachment).permit(:file)
  end
end


