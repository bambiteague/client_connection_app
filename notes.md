
<----------Models--------->
**right now I don't think I meet to many to many requirements**
**but I think that my relationships make sense and are correct as is, so I will proceed with this for now**

[x] GlobalUser 
  - attributes:
      - client - boolean
      - designer - boolean
      - email - text
      - first_name - string
      - last_name - string
      - username - string
      - age (boolean of 18+?)
  - relationships:
      - has_many :costumes, through: globalusercostumes

[x] Costume
  - attributes:
      - title - string
      - type - string (fullsuit, 3/4 partial, head, tail, paws, feet paws)
      - reference_sheet - string (a url of an image/image file)
  - relationships:
      - belongs_to :globalusers, through: :globalusercostumes
  
[x] GlobalUserCostume (join table)
  - attributes:
      - costume_id - integer
      - globaluser_id - integer
      - **something**
  - relationships:
      - belongs_to :globalusers
      - belongs_to :costumes


  <----------Controllers--------->

