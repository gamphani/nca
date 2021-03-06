class DocsController < ApplicationController
  def index
  	@docs = Doc.all
  end

  def new
  	@doc = Doc.new
  end

  def create
  	@doc = Doc.new(params[:docs_new].permit(:name, :department, :attachment))

    if @doc.save
      redirect_to docs_new_path, notice: "The document #{@doc.name} has been uploaded."
    else
      redirect_to docs_new_path, notice: "The document #{@doc.name} was notb saved"
      #render "new"
    end
  end

  def destroy
  	@doc = Doc.find(params[:id])
    @doc.destroy
    redirect_to docs_path, notice:  "The document #{@doc.name} has been deleted."
  end
  private
  #def doc_params
    #params.require(:doc).permit(:name, :attachment)
  #end
end
