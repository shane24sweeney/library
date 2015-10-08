class CheckoutsController < ApplicationController

  def show_book
    #respond_to do |format|
    if admin_logged_in?
      @book = Book.find(params[:id])
    else
      #format.html{ redirect_to root_path, error: 'Unable to access.' }
    end
    #end
  end

  def show_user
    @user = User.find(params[:id])
    #respond_to do |format|
    unless @user == current_user || admin_logged_in?
      #format.html{
      redirect_to root_path #, error: 'Unable to access.'
      #}
    end
    #end
  end


  def create
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.checkouts.create(user: current_user, created_at: Time.now)
        @book.update(status: "Checked out")
        format.html { redirect_to @book, notice: 'Checked out successfully!!' }
      else
        format.html { render @book, notice: 'Unable to Checkout' }
      end
    end
  end


  def create_admin
    @book = Book.find(params[:id])
    @user = User.find_by(email: params[:user][:email])
    respond_to do |format|
      if @user.nil?
        format.html { redirect_to @book, notice: 'Invalid user!' }

      elsif @book.checkouts.create(user: @user, created_at: Time.now)
        @book.update(status: "Checked out")
        format.html { redirect_to @book, notice: 'Checked out successfully!!' }
      else
        format.html { render @book, notice: 'Unable to Checkout' }
      end
    end
  end

  def update
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.checkouts.last.update_attributes(updated_at: Time.now)
        if !@book.notifications.nil?
          @book.notifications.each do |x|
            UserMailer.book_available_notification(x.user, @book).deliver
            x.destroy
          end
        end
        @book.update(status: "In Library")
        format.html { redirect_to @book, notice: 'Returned successfully!!' }
      else
        format.html { render @book, notice: 'Return Failed!!' }
      end
    end
  end

end
