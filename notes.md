
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
    - full MVC/CRUD actions to see 'commissioned_costumes'

[] Commissions_controller--->
    - ability to check on status(INDEX/SHOW) of costume(client)
    - EDIT/UPDATE status(designer)


  <----------Views--------->

