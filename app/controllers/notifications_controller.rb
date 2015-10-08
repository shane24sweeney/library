class NotificationsController < ApplicationController
  def create
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.notifications.create(user: current_user, created_at: Time.now)
        format.html { redirect_to @book, notice: 'Notification Created!!' }
      else
        format.html { render @book, notice: 'Unable to create notification' }
      end
    end
  end
end
