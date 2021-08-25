# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
<<<<<<< HEAD
  #around_action :shower
=======
>>>>>>> html_to_pdf
  # rescue_from ActiveRecord::RecordNotFound, with: :record_now_found_handler
  around_action :shower
  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

<<<<<<< HEAD
  #def shower
  #  puts 'params'
  #  puts 'request'
  #  puts request.body.read
  #  puts 'response'
  #  puts response.to_a
  #  yield
  #end
=======
  def shower
    puts 'params'
    yield
    puts 'request'
    puts request.body.read
    puts 'response'
    puts response.to_a
  end
>>>>>>> html_to_pdf

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'file_name', template: 'posts/show.html.erb' # Excluding ".pdf" extension.
      end
    end
  end

  # GET /posts/1 or /posts/1.json
  # def show
  # respond_to do |format|
  # format.html
  # format.json
  # #format.xml {render xml: @post}
  # #format.rtf{render rtf: @post}
  # end
  # binding.pry
  # flash.now[:notice] = 'Somenot'
  # end

  # GET /posts/new
  def new
    @post = Post.new
  end

  def putetter
    puts 'bbbbbbb'
  end

  # GET /posts/1/edit
  def edit; end

  def last_post
    @post = Post.last
  end

  # POST /posts or /posts.json
  def create
    # raise 'Params are not permitted' if post_params.permitted!= true
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :body, :published)
  end
  # def record_now_found_handler
  #  respond_to do |format|
  #    format.json {render json: {msg:'record not found', status: :not_found} ,status: :not_found}]
  #  end
  # end
end
