# README

# AJAX Asynchronous JavaScript and XML. AJAX is a technique for creating fast and dynamic web pages.
# With the help of this we can update parts of a web page, without reloading the whole page.

* Set 'remote: true' option enables AJAX for the form.

* Create `app/assets/javascripts/application.js` and add package `//= require rails-ujs`

* To call the ajax request inside controller action i.e create set format is
  ```
    respond_to do |format|
      format.js
    end
  ```

* Meanwhile create a file inside a view/posts 
  `create.js.erb`
