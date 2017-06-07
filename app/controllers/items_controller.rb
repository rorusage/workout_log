class ItemsController < ApplicationController
  def create
    @workout = Workout.find(params[:workout_id])
    @item = @workout.items.build(item_params)

    if @item.save
      redirect_to workout_path(@workout), notice: "新增項目成功"
    else
      render :new
    end
  end

  def edit
    @workout = Workout.find(params[:workout_id])
    @item = @workout.items.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:workout_id])
    @item = @workout.items.find(params[:id])

    if @item.update(item_params)
      redirect_to workout_path(@workout), alert: "修改項目成功"
    else
      render :edit
    end
  end

  def destroy
    @workout = Workout.find(params[:workout_id])
    @item = @workout.items.find(params[:id])
    @item.destroy
    redirect_to workout_path(@workout), alert: "刪除項目成功"
  end

  private

  def item_params
    params.require(:item).permit(:name, :set, :rep_time)
  end
end
