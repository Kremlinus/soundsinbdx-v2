module EventsHelper
   def filter_array
      filter_array = {
         'price' => [
            ['Tout', 'all'],
            ['Gratuit', '0'],
            ['10€ ou moins', '-10'],
            ['Plus de 10€', '+10'],
         ],
         'date' => [
           ['Tout', 'all'],
           ["Aujourd'hui", 'today'],
           ['Demain', 'tomorrow'],
           ['Cette semaine', 'this_week'],
           ['La semaine prochaine', 'next_week'],
           ['Ce mois-ci', 'this_month']
         ],
         'location' => add_locations_to_filter_array,
         'musicType' => add_music_type_to_filter_array
      }
   end
   def add_locations_to_filter_array
     location_array = [
       ['Tout', 'all']
     ]
     Location.all.each do |location|
       location_array.push([location.name.titleize, location.name])
     end
     return location_array
   end
   def add_music_type_to_filter_array
     music_type_array = [
       ['Tout', 'all']
     ]
     MusicType.all.each do |musicType|
       music_type_array.push([musicType.name.titleize, musicType.name])
     end
     return music_type_array
   end
end
