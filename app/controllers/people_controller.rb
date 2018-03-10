class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = Person.all
    json_response(@people)
  end

  # POST /people
  def create
    @person = Person.create!(person_params)
    json_response(@person, :created)
  end

  # GET /people/:id
  def show
    json_response(@person)
  end

  # PUT /people/:id
  def update
    @person.update(person)
    head :no_content
  end

  # DELETE /people/:id
  def destroy
    @person.destroy
    head :no_content
  end

  private

  def person
    # whitelist params
    params.permit(:first_name, :last_name, :description, :twitter_handle, :photo)
  end

  def set_person
    @person = Person.find(params[:id])
  end
end
