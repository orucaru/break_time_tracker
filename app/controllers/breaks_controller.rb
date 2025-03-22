class BreaksController < ApplicationController
  def index
    @breaks = Break.all
    @break = Break.new  # 新しい休憩インスタンスを作成
  end

  def create
    @break = Break.new(start_time: Time.now)  # 休憩開始時に現在時刻を設定
    if @break.save
      redirect_to breaks_path, notice: "休憩が開始されました！"
    else
      redirect_to breaks_path, alert: "休憩開始に失敗しました。"
    end
  end

  def update
    @break = Break.find(params[:id])  # 特定の休憩を取得
    if @break.update(end_time: Time.now)  # 終了時刻を現在時刻で更新
      redirect_to breaks_path, notice: "休憩が終了しました！"
    else
      redirect_to breaks_path, alert: "休憩終了に失敗しました。"
    end
  end
end
