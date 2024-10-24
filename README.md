# ONLINE SOFT SELL

Welcome to the **Online Soft Sell** dashboard application! This admin interface allows for seamless management of customers, suppliers, products, POS, expenses, and orders.

## Features
- **Responsive Design**: Ensures usability across various devices.
- **Flexible App Bar**: The app bar expands and collapses based on the scroll position.
- **Interactive Grid Layout**: Displays different sections of the admin panel with hover effects and clickable items.

## Screenshots
![Screenshot](https://github.com/user-attachments/assets/03a15aad-f2e5-45d3-ae7a-3fc1d15b0874)


## Installation
Clone the repository and install the dependencies:

```bash
git clone https://github.com/your-username/your-repository.git
cd your-repository
flutter pub get
```
Usage
Run the application using:
```bash
flutter run
```

## Code Overview

- **HomePage Widget**: The main widget of the app, defined in a Stateless Widget.
- **Sections**: An array of maps that hold image URLs and labels for each section.
- **FlexibleSpaceBar**: Customizes the app bar with a title and background color.
- **SliverAppBar**: Expands and collapses with the scroll.
- **GridView.builder**: Creates a responsive grid layout for the sections.
- **Image.network**: Displays images from URLs with hover zoom effects.

## How It Works

- **HomePage Widget**:
  - Defines a list of sections, each containing an image URL and a label.
  - Uses a Stack layout to layer the CustomScrollView and GridView.

- **SliverAppBar**:
  - Configured to expand with a flexible space displaying the title "ONLINE SOFT SELL" and a subtitle.
  - Background color is set to green.

- **GridView.builder**:
  - Positioned just below the SliverAppBar.
  - Uses cards and images with hover effects for each section.

## Dependencies

- **Flutter**: The framework used to build the application.
- **Material Design**: For UI elements and components.

## Contributing

Feel free to fork the repository and submit pull requests. For major changes, please open an issue to discuss what you would like to change.
