module EventsHelper
   def filter_array
      filter_array = {
         'price' => [
            ['Tout', 'all'],
            ['Gratuit', '0'],
            ['Moins de 10€', '-10'],
            ['Plus de 10€', '+10'],
         ]
      }
   end
end
