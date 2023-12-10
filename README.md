# ‖ BASHO  ‖ A map of your best memories, past and yet to come

_BASHO is a mobile-first web app where users can curate their map of Tokyo with the places that matter to them. As opposed to Google Maps, BASHO lets them sort and customize their pins, but most of all, it allows them to create as many tags as they want to label their places and easily find them later on._

#### After signing up, the user starts with a clean map of Tokyo. They can add a new pin to their map:
- When they go to a new place so they can easily return or talk about it to their friends and family
- When a friend, website or influencer recommends a place, as a memo
- When they see a place that sparks their interest while on the bus or walking around, so they can go there in the future

#### When the user adds a pin:
- BASHO's search feature allows them to easily find the place so they don't have to type the address (nor the place's full name)
- They can create new tags for it, or choose from their list of previously created ones
- By default, the place is marked as not visited, but the user can toggle this now or later on
- They can add their own personal rating and comments for future reference
- They can browse through their collection of pins via two view modes: map or list view

#### When it comes to saving places, the advantages of using BASHO instead of Google Maps are being able to:
- Filter by tag(s)
- Filter by already visited or not
- Sort by alphabetical order
- Sort by date (when the pin was created)
- Do a search by name, address keyword, or in the comments

#### Screenshots:
<img width="292" alt="homepage" src="https://github.com/missdaji/basho/assets/144430313/99dbdf4a-a795-4a09-bcc0-cc216b2e7d6e">
<img width="292" alt="map-view" src="https://github.com/missdaji/basho/assets/144430313/6d9963a6-53a7-49f7-9377-6ec33d5674b4">
<img width="292" alt="filters" src="https://github.com/missdaji/basho/assets/144430313/bd7255ef-b790-4b71-8ffe-fb05f10062eb">
<img width="292" alt="pin-preview" src="https://github.com/missdaji/basho/assets/144430313/cb77abdf-ec28-4bf6-bd87-e3491524a5bd">
<img width="292" alt="list-view" src="https://github.com/missdaji/basho/assets/144430313/191ea103-2760-4bfd-8bfa-873d2ac0c6bb">
<img width="292" alt="show-one" src="https://github.com/missdaji/basho/assets/144430313/26a5a5e1-aaf2-4a42-a59a-1becde5255ea">
<img width="292" alt="search-feature" src="https://github.com/missdaji/basho/assets/144430313/9ddcc43e-6491-40da-9f5e-718cd767e648">
<img width="292" alt="search-feature-2" src="https://github.com/missdaji/basho/assets/144430313/24e14011-f18f-40fc-a252-4184861beb7b">
<img width="292" alt="new-pin" src="https://github.com/missdaji/basho/assets/144430313/e829ec70-33ad-4143-860f-85b114404b76">

#### Create your own account and explore the app: 
https://www.basho-app.me
   
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
