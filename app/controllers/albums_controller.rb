class AlbumsController < ApplicationController
 respond_to :html, :js, :json


def index
  @albums = Album.all.order_list(params[:sort_by])
end

def show
  @album = Album.find(params[:id])
  @artist = Artist.find(@album.artist_id)
end

def new
  @album = Album.new
end

def create
  @album = Album.new(album_params)

  if @album.save!
     redirect_to request.referrer
  else
     render 'new'
  end
end

def edit
  @album = Album.find(params[:id])
end

def update
  @album = Album.find( params[:id] )

  if @album.update_attributes( album_params )
     redirect_to @album
  else
     render 'edit'
  end
end

# DELETE /artists/1
# DELETE /artists/1.json
def destroy
  @album = Album.find(params[:id])
  @album.destroy
  respond_to do |format|
    format.html { redirect_to request.referrer, notice: 'Artist was successfully destroyed.' }
    format.json { head :no_content }
    format.js   { render :layout => false }
  end
end

def remove_all
  Album.delete_all
  flash[:notice] = "You have removed all albums!"
  redirect_to request.referrer
end

private

def album_params
  params.require(:album).permit(:album_name, :released, :album_image_url, :artist_id)
end
end
