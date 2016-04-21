netflix_library = {
  tv_shows:  {
    total_shows: 4,
    tv_comedy: ['Unbreakable Kimmy Schimidt', 'Parks and Recreation'],
    tv_drama: ['House of Cards', 'Black Mirror'],
  },

  documentaries:  {
    total_movies: 5,
    critically_acclaimed: ['Jiro Dreams of Sushi', 'Somn', 'For Grace'],
    foreign: ['The Act of Killing', 'The Kingdom of Dreams and Madness'],
  },

  comedies: {
    total_movies: 4,
    romantic_comedy: ['Princess Bride', 'Man Up', 'Along Came Polly'],
    black_comedy: ['God Bless America'],
  },

  dramas: {
    total_movies: 4,
    war: ['Fury', 'Inglorious Basterds','Red Cliff', 'Black Hawk Down'],
  }
}

#Add Bob's Burgers and update total number of shows
# p netflix_library[:tv_shows][:tv_comedy].push('Bobs Burgers')
# netflix_library[:tv_shows][:total_shows] = 5
# p netflix_library[:tv_shows]

#Print each foreign documentary with "was awesome"
# netflix_library[:documentaries][:foreign].each {
  # |foreign_movie| p foreign_movie + " was awesome!"}

#Add histortical drama array to dramas hash
# netflix_library[:dramas][:historical] = ['Pride & Prejudice']
# p netflix_library[:dramas]

#Replace black_comedy array with new array
# p netflix_library[:comedies][:black_comedy]
# netflix_library[:comedies][:black_comedy].replace(['The Brass Teapot', 'Wet Hot American Summer'])
# p netflix_library[:comedies][:black_comedy]

#Add new hash merging tv shows and documentaries
# netflix_library[:shows_and_docs]= netflix_library[:tv_shows].merge(netflix_library[:documentaries])
# p netflix_library
# p netflix_library[:shows_and_docs]
