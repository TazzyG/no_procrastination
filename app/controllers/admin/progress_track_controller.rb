class Admin::ProgressTrackController < Admin::BaseController
  before_action :set_admin_progress_track, only: %i[ show edit update destroy ]

  def index
    @admin_progress_trackers = Admin::progress_track.all
  end

  def show
  end

  def new
    @admin_progress_track = Admin::progress_track.new
  end

  def edit
  end

  def create
    @admin_progress_track = Admin::progress_track.new(admin_progress_track_params)

    respond_to do |format|
      if @admin_progress_track
        .save
        format.html { redirect_to @admin_progress_track
        , notice: "progress_track
         was successfully created." }
        format.json { render :show, status: :created, location: @admin_progress_track
       }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @admin_progress_track
        .errors, status: :unprocessable_content }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_progress_track.update(admin_progress_track_params)
        format.html { redirect_to @admin_progress_track
        , notice: "progress_track
         was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @admin_progress_track
       }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @admin_progress_track
        .errors, status: :unprocessable_content }
      end
    end
  end

  def destroy
    @admin_progress_track
    .destroy!

    respond_to do |format|
      format.html { redirect_to admin_progress_trackers_path, notice: "progress_track
       was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private

    def set_admin_progress_track
      @admin_progress_track
       = Admin::progress_track.find(params.expect(:id))
    end


    def admin_progress_track
      _params
      params.expect(admin_progress_track [ :title, :body ])
    end
end
