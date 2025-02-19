# Food For Education

This is a Flutter application that fetches posts from the [JSONPlaceholder API](https://jsonplaceholder.typicode.com/posts) and displays them in a scrollable list. The app includes features like pagination, pull-to-refresh, offline support, and error handling.  

---

## Features  

- **Display List of Posts:**  
  Fetch posts from the API and display them in a scrollable list. Each post displays its title and body.  

- **Load More Functionality:**  
  A "Load More" button is implemented to fetch the next 10 posts when clicked.  

- **Pull-to-Refresh:**  
  A pull-to-refresh feature is added to reload the data.  

- **Error Handling:**  
  Displays an error message if the API request fails or if there are network issues.  

- **Pagination:**  
  Fetches 10 posts at a time using pagination.  

- **Offline Support:**  
  If no internet connection is available, the app displays cached posts using **Hive**.  

---

## Getting Started


### Prerequisites  

- Flutter SDK installed on your machine. If not, follow the [official installation guide](https://flutter.dev/docs/get-started/install).  
- A code editor (e.g., Visual Studio Code, Android Studio).  

### Installation  

1. **Clone the repository:**  

   ```bash  
   git clone https://github.com/AidaBadawy/food-for-education.git

   cd food-for-education

2. **Install dependencies:** 

    ```bash  
    flutter pub get  

3. **Run the app:** 

    ```bash  
    flutter run  
