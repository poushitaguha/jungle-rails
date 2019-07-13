class ReviewsController < ApplicationController

    before_filter :authorize

    def create
        @product = Product.find params[:product_id]
        @review = @product.reviews.new(review_params)
        @review.user_id = current_user.id
  
        if @review.save
          redirect_to @product  #, notice: "Your review has been successfully posted"
        else
          redirect_to @product  #, flash: { error: @review.errors.full_messages.first }
        end      
    end   
    
    def destroy
        @review = Review.find params[:id]
        @product_id = @review.product_id
        @review.destroy
        redirect_to Product.find @product_id
    end      

    private

    def review_params
        params.require(:review).permit(
        :description,
        :rating
        )
    end

end
