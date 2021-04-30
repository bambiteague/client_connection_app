
<----------Models--------->

[] User - Designer & Client (use Aliasing)
  - has_many :costumes, through :orders
  - has_many :costumes
  - belongs_to :profile (?)

    attributes-->
    - name
    - age
    - email   

[] Costume
  - belongs_to :user
  - has_many :users, through :orders

    attributes-->
    - description
    - cost

[] Orders (join table)
  - belongs_to :user
  - belongs_to :costume

    attributes--> 
    - costume_id
    - user_id
    - (one other field)

[] Profile*
  (*is this seperation of concerns needed or excess?)


  <----------Controllers--------->

