# Weather_app_rails

## Overview

The Weather App is a Ruby on Rails application that allows users to check the current weather conditions for a specific city. It utilizes the OpenWeatherMap API to retrieve real-time weather data.

## Features

- Get current temperature and weather description for a chosen city.
- Select a country and city from a dropdown menu.

## Getting Started

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/atultechd/weather_app_rails.git
   cd weather_app_rails
   ```

2. Install dependencies:

   ```bash
   bundle install
   ```

3. Set up your OpenWeatherMap API key:

   - Create a `.env` file in the root directory.
   - Add your API key:

     ```env
     OPENWEATHERMAP_API_KEY=your_api_key_here
     ```

### Usage

1. Start the Rails server:

   ```bash
   rails server
   ```

2. Open your browser and go to [http://localhost:3000](http://localhost:3000).

3. Enter a city name, select a country, and click "Get Weather" to see the current conditions.

## Configuration

- **OpenWeatherMap API Key**: Make sure to set up your own API key as described in the installation steps.

## Contributing

If you'd like to contribute to the project, please follow these guidelines:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature/new-feature`.
3. Commit your changes: `git commit -m 'Add new feature'`.
4. Push to the branch: `git push origin feature/new-feature`.
5. Submit a pull request.


## Acknowledgments

- [OpenWeatherMap](https://openweathermap.org/) for providing the weather data API.

## Contact

For any inquiries, please contact [Atul Dwivedi](mailto:atultechd@gmail.com).
