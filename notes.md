<----Cruntch time for project what's left?---->

[x] use ruby on rails framework

[x] model relationship requirements

[x] model validations to protect against bad/invalid data

[] included a ActiveRecord Scope method
    [] is that method chainable? (did you use AR query methods within it like #.where and #.order?)
       Use these over native Ruby methods like #.find_all or #.sort

[x] app provides standard user auth. including signup, login, logout and passwords

[] Omniauth to allow login from another service ^

[x] must include and make use of a nested resource with the appropriate RESTful URLs
    [] must include a nested new route with form that relates to the parent resource
    [] You must include a nested index or show route

[] forms should correctly display validation errors
    [] fields should be enclosed within a fieldswitherrors class
    [] error messages describing the validation failures must be present within the view

[] DRY within reason
    [] logic present within your controllers should be encapsulated as methods in your models
    [] views should use helper methods and partials when appropriate

[x] NO Scaffolding



<----------Models--------->

[x] GlobalUser 
  - attributes:
      - client - boolean
      - designer - boolean
      - email - text
      - first_name - string
      - last_name - string
      - username - string
      - password - string

[x] Costume
  - attributes:
      - title - string
      - type - string (fullsuit, 3/4 partial, head, tail, paws, feet paws)
      - reference_sheet - string (a url of an image/image file)
  
[x] Comission (join table)
  - attributes:
      - costume_id - integer
      - globaluser_id - integer
      - submitted_at - datetime


  <----------Controllers--------->

[] Globalusers_controller--->
    - handles signup functions
    - use omniauth
    - (connects to a user profile?)

[] Sessions_controller--->
    - handles login and log out functions

[] Costumes_controller--->
    - full MVC/CRUD actions 

[] Commissions_controller--->
    - ability to check on status(INDEX/SHOW) of costume(client)
    - EDIT/UPDATE status(designer)


  <------------------------------>

