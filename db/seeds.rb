cattributes = [
        {
          name: 'Erebus',
          age: 3,
          enjoys: 'darkness',
        },
        {
          name: 'Kris',
          age: 1,
          enjoys: 'fucking meowing',
        },
        {
          name: 'G',
          age: 5,
          enjoys: 'hunting',
        },
        {
          name: 'Cupcake',
          age: 11,
          enjoys: 'domination',
        },
        {
          name: 'Dre',
          age: 2,
          enjoys: 'love',
        },
        {
          name: 'Snoop',
          age: 2,
          enjoys: 'snuggles',
        }
      ]

cattributes.each do |attributes|
  Cat.create(attributes)
end
