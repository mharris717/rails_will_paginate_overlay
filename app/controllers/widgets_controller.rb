<overlay>
  action: replace
  base: render :json => Widget.all
</overlay>

    page = (params[:page] || 1).to_i
    @widgets = Widget.all.paginate(:page => page, :per_page => 1)
    render :json => @widgets, :meta => {:total_pages => @widgets.total_pages, :page => page}
