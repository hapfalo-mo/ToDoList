class ToDoFeaturesController < ApplicationController
  before_action :set_to_do_feature, only: %i[ show edit update destroy ]

  # GET /to_do_features or /to_do_features.json
  def index
    @to_do_features = ToDoFeature.all
  end

  # GET /to_do_features/1 or /to_do_features/1.json
  def show
  end

  # GET /to_do_features/new
  def new
    @to_do_feature = ToDoFeature.new
  end

  # GET /to_do_features/1/edit
  def edit
  end

  # POST /to_do_features or /to_do_features.json
  def create
    @to_do_feature = ToDoFeature.new(to_do_feature_params)
    @to_do_feature.status = 0

    respond_to do |format|
      if @to_do_feature.save
        format.html { redirect_to @to_do_feature, notice: "To do feature was successfully created." }
        format.json { render :show, status: :created, location: @to_do_feature }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @to_do_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /to_do_features/1 or /to_do_features/1.json
  def update
    respond_to do |format|
      if @to_do_feature.update(to_do_feature_params)
        format.html { redirect_to @to_do_feature, notice: "To do feature was successfully updated." }
        format.json { render :show, status: :ok, location: @to_do_feature }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @to_do_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /to_do_features/1 or /to_do_features/1.json
  def destroy
    @to_do_feature.destroy!

    respond_to do |format|
      format.html { redirect_to to_do_features_path, status: :see_other, notice: "To do feature was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_do_feature
      @to_do_feature = ToDoFeature.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def to_do_feature_params
      params.expect(to_do_feature: [ :name, :description ])
    end
end
