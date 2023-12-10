# ‖ BASHO  ‖ A map of your best memories, past and yet to come

_BASHO is a mobile-first web app where users can curate their map of Tokyo with the places that matter to them. As opposed to Google Maps, BASHO lets them sort and customize their pins, but most of all, it allows them to create as many tags as they want to label their places and easily find them later on._

#### After signing up, the user starts with a clean map of Tokyo. They can add a new pin to their map:
- When they go to a new place so they can easily return or talk about it to their friends and family
- When a friend, website or influencer recommends a place, as a memo
- When they see a place that sparks their interest while on the bus or walking around, so they can go there in the future

#### When the user adds a pin:
- BASHO's search feature allows them to easily find the place so they don't have to type the address (and the place's name in full)
- They can create new tags for it, or choose from their list of previously created ones
- They state if visited or not
- They can add their own personal rating and comments for future reference
- They can browse through their collection of pins via two view modes: map or list view

#### The advantages of using BASHO instead of Google Maps for saving places are being able to:
- Filter by tag(s)
- Filter by already visited or not
- Sort by alphabetical order
- Sort by date (when the pin was created)
- Do a search by name, address keyword, or in the comments

App home: https://www.basho-app.me
   
## Getting Started
### Setup

Install gems
```
bundle install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
MAPBOX_API_KEY=your_own_mapbox_api_key
GOOGLE_API_KEY=your_own_google_api_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Acknowledgements
Inspired by French app "Mapstr" https://web.mapstr.com/.

## Team Members
- [Stéphanie DI DINO](https://www.linkedin.com/in/ssdidino/) - Project Manager
- [Julien LESUEUR](https://www.linkedin.com/in/julien-lesueur/) - Lead Developer
- [Chris BOURGEONNIER](https://www.linkedin.com/in/chrisbourgeonnier/) - Fullstack Developer
- [Jonatan JAKOBSSON](https://www.linkedin.com/in/jonatan--jakobsson/) - Backend Developer
