class List < ActiveHash::Base
  self.data = [
    { id: 1, name: 'これから' }
    { id: 2, name: '終わった' }
  ]

end