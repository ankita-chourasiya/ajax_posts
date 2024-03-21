# README

# AJAX Asynchronous JavaScript and XML. AJAX is a technique for creating fast and dynamic web pages.
# With the help of this we can update parts of a web page, without reloading the whole page.

* Set 'remote: true' option enables AJAX for the form.
  ```
  <%= form_for :post, url: posts_path, remote: true do |f| %>
  <p>
    <%= f.label :title %><br>
    <%= f.text_field :title %>
  </p>
  <p>
    <%= f.label :content %><br>
    <%= f.text_area :content %>
  </p>
  <%= f.submit "Create Post" %>
<% end %>
<div id="postSuccess"></div>
  ```

* Create `app/assets/javascripts/application.js` and add package
  ```
  //= require rails-ujs
  ```

* To call the ajax request inside controller action i.e create set format is
  ```
    def create
    @post = Post.new(post_params)
    if @post.save
      respond_to do |format|
        format.js    # To Ajax Request
        format.html { redirect_to new_post_path }
      end
    else
      render :new
    end
  end
  ```

* Meanwhile create a file inside a view/posts 
  `create.js.erb`

   ```
   console.log("AJAX response received");
   document.getElementById("postSuccess").innerHTML = "Post was successfully created.";
   document.querySelector("form").reset();
   ```
