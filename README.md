# Cloverly Microservice

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

  <h3 align="center">Cloverly Microservice</h3>

  <p align="center">
    This is a microservice that was built to provide information about carbon footprints  for the Carbon Knight application.
    <br />
    <a href="https://github.com/Carbon-Knight/cloverly_microservice"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <!-- for adding a demo video
    <a href="Add our video link here">View Demo</a>  · -->
    ·
    <a href="https://github.com/Carbon-Knight/cloverly_microservice/issues">Report Bug</a>
    ·
    <a href="https://github.com/Carbon-Knight/cloverly_microservice/issues">Request Feature</a>
  </p>
</p>




<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Configuration](#configuration)
  * [Testing](#testing)
* [Contributing](#contributing)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)




<!-- ABOUT THE PROJECT -->
## About The Project


To view all the repositories associated with Carbon Knight, please visit [Carbon Knight](https://github.com/Carbon-Knight)

This micro services uses the [Cloverly](https://www.cloverly.com/) API.  Read the API documentation [here](https://www.cloverly.com/carbon-offset-documentation.html) 

This microservice is able to take in information about a particular trip and will provide the approximate carbon used for that trip in kilograms along with the cost to offset that carbon.  It does this by recieving query parameters from the [Carbon Knight Backend](https://github.com/Carbon-Knight/carbon-knight-back-end), makes a call to the Cloverly API using these parameters, and then packages up the API response and sends that back to the Carbon Knight Backend in the proper format.

### To Dos

- Fill in about the project with stuff about this microservice.
- Are we going to be using Rspec, how will we handle testing and coverage?
-



### Built With

* [Sinatra](https://github.com/sinatra/sinatra)
* [Ruby](https://github.com/ruby/ruby)


<!-- GETTING STARTED -->
## Getting Started

To use the Cloverly Microservice locally, you can fork or clone [this](https://github.com/Carbon-Knight/cloverly_microservice.git) repo.


### Configuration

1. ```git clone https://github.com/Carbon-Knight/cloverly_microservice.git```
2. ```cd cloverly_microservice```
3. ```bundle install```
4. In the command line run ```ruby lib/cloverly_microservice.rb```  This will spin up your local server.
5. In your browser paste in ```http://localhost:4567/api/v1/carbonfootprint?fuel_efficiency=25&trip_distance=80``` and you will see this response:
  ```
  {
    "data": {
      "equivalent_carbon_in_kg": 28.444,
      "cloverly_offset_cost": {
          "currency": "USD",
          "total": 0.31
      }
    }
  }
  ```

  The two parameters used in this call is `fuel_efficiency` and `trip_distance`.  From here you can edit these two parameters within the url to obtain your desired response

### Testing

[RSpec](https://rspec.info/) was used for the testing of this project.

Cloverly Microservice has been fully tested. To view the test coverage;

Once inside your terminal within the Rails Engine directory run the following command.
```
open coverage
```

This will open up a folder with an index.html file. Clicking on this file will show you a list of all lines of code within this project, and whether they have been tested or not.

Additionally, running ```bundle exec rspec``` will show you the quick summary of the test coverage in this application.

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/Carbon-Knight/cloverly_microservice/issues) for a list of proposed features, known issues, and project extensions.


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make this community such an amazing and fun place to learn, grow, and create! Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch ```git checkout -b feature/NewGreatFeature```
3. Commit your Changes ```git commit -m 'Add some NewGreatFeature'```
4. Push to the Branch ```git push origin feature/NewGreatFeature```
5. Open a new Pull Request!


<!-- CONTACT -->
## Contact

Curtis Bartell &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/curtis-bartell/) - [GitHub](https://github.com/c-bartell)

Jonathan Wilson - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/jonathan--wilson/) - [GitHub](https://github.com/Jonathan-M-Wilson)

Carson Jardine &nbsp;&nbsp; - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/carson-jardine/) - [GitHub](https://github.com/carson-jardine)

Eugene Theriault - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/eugene-theriault/) - [GitHub](https://github.com/ETBassist)

Roberto Basulto &nbsp;- [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/roberto-basulto/) - [GitHub](https://github.com/Eternal-Flame085)

James Belta &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/james-belta/) - [GitHub](https://github.com/JBelta)

Joshua Carey &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/carey-joshua/) - [GitHub](https://github.com/jdcarey128)

Kiera Allen &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/kieraallen/) - [GitHub](https://github.com/KieraAllen)

Sean Steel &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/sean-steel/) - [GitHub](https://github.com/s-steel)



Project Link: [Carbon Knight](https://github.com/Carbon-Knight)



<!-- ACKNOWLEDGEMENTS -->
<!-- Add resources that were used to help create this project here -->




<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/Carbon-Knight/cloverly_microservice
[contributors-url]: https://github.com/Carbon-Knight/cloverly_microservice/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Carbon-Knight/cloverly_microservice
[forks-url]: https://github.com/Carbon-Knight/cloverly_microservice/network/members
[stars-shield]: https://img.shields.io/github/stars/Carbon-Knight/cloverly_microservice
[stars-url]: https://github.com/Carbon-Knight/cloverly_microservice/stargazers
[issues-shield]: https://img.shields.io/github/issues/Carbon-Knight/cloverly_microservice
[issues-url]: https://github.com/Carbon-Knight/cloverly_microservice/issues
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
