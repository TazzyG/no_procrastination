class Admin::ProgressEntryController < Admin::BaseController
  before_action :set_admin_progress_entry, only: %i[ show edit update destroy ]

  def index
    @admin_progress_entries = Admin::progress_entry.all
  end

  def show
  end

  def new
    @admin_progress_entry = Admin::progress_entry.new
  end

  def edit
  end

  def create
    @admin_progress_entry = Admin::progress_entry.new(admin_progress_entry_params)

    respond_to do |format|
      if @admin_progress_entry
        .save
        format.html { redirect_to @admin_progress_entry
        , notice: "progress_entry
         was successfully created." }
        format.json { render :show, status: :created, location: @admin_progress_entry
       }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @admin_progress_entry
        .errors, status: :unprocessable_content }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_progress_entry.update(admin_progress_entry_params)
        format.html { redirect_to @admin_progress_entry
        , notice: "progress_entry
         was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @admin_progress_entry
       }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @admin_progress_entry
        .errors, status: :unprocessable_content }
      end
    end
  end

  def destroy
    @admin_progress_entry
    .destroy!

    respond_to do |format|
      format.html { redirect_to admin_progress_enties_path, notice: "progress_entry
       was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private

    def set_admin_progress_entry
      @admin_progress_entry
       = Admin::progress_entry.find(params.expect(:id))
    end


    def admin_progress_entry
      _params
      params.expect(admin_progress_entry: [ :title, :body ])
    end
end
