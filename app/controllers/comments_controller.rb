class CommentsController < ApplicationController

  def create
  
    @project = Project.find(params[:project_id])
    @comment = @project.comments.create(comment_params)
    #render 'projects/create_comments'
    redirect_to @project 
  end

 def destroy
    @project = Project.find(params[:project_id])
                     
    @comment = @project.comments.find(params[:id])
    @comment.destroy
    redirect_to project_path(@project)
  end

def edit 
     @project = Project.find(params[:project_id]) 
     @comment = Comment.find(params[:id]) 
  end 
   def update 
      @project = Project.find(params[:project_id]) 
      @comment = Comment.find(params[:id]) 
      @comment.update(comment_params)
       flash[:notice] = "Comment Updated"
      redirect_to @project  
    end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body,:project_id)
    end
end


