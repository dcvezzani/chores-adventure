class FamilyMembersController < ApplicationController
  before_action :set_family_member, only: [:show, :edit, :update, :destroy]

  # GET /family_members
  # GET /family_members.json
  def index
    @family_members = FamilyMember.all
  end

  # GET /family_members/1
  # GET /family_members/1.json
  def show
  end

  # GET /family_members/new
  def new
    @family_member = FamilyMember.new
  end

  # GET /family_members/1/edit
  def edit
  end

  # POST /family_members
  # POST /family_members.json
  def create
    @family_member = FamilyMember.new(family_member_params)

    respond_to do |format|
      if @family_member.save
        format.html { redirect_to @family_member.becomes(FamilyMember), notice: 'Family member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @family_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @family_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_members/1
  # PATCH/PUT /family_members/1.json
  def update
    respond_to do |format|
      if @family_member.update(family_member_params)
        format.html { redirect_to @family_member.becomes(FamilyMember), notice: 'Family member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @family_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_members/1
  # DELETE /family_members/1.json
  def destroy
    @family_member.destroy
    respond_to do |format|
      format.html { redirect_to family_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_member
      @family_member = FamilyMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_member_params
      params.require(:family_member).permit(:name, :birthdate)

      # if(params[:family_member])
      #   params.require(:family_member).permit(:name, :birthdate)
      # elsif(params[:parent])
      #   params.require(:parent).permit(:name, :birthdate)
      # elsif(params[:child])
      #   params.require(:child).permit(:name, :birthdate)
      # end
    end
end
