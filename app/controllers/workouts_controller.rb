class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to workouts_path, notice: "新增紀錄成功！"
    else
      render :new
    end
  end

  def show
    @workout = Workout.find(params[:id])
    @items = @workout.items
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])

    if @workout.update(workout_params)
      redirect_to workout_path(@workout), alert: "更新記錄成功！"
    else
      render :edit
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to workouts_path, alert: "刪除紀錄成功！"
  end


  private

  def workout_params
    params.require(:workout).permit(:goal, :feeling, :total_time, :workout_date)
  end
end
