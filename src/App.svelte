<script>
import { Router, Route } from "svelte-routing";
  import Header from "./Components/Header.svelte";
  import Home from "./Pages/Home.svelte";
  import About from "./Pages/About.svelte";
  import Footer from "./Components/Footer.svelte";
  import CovidChart from "./Pages/CovidChart.svelte";
  import Register from "./Pages/Register.svelte";
import Profile from "./Pages/Dashboard/Profile.svelte";

  
import { initializeApp } from 'firebase/app';
import { getAuth } from 'firebase/auth';
import { getDatabase } from 'firebase/database';
  import Login from "./Pages/Login.svelte";

const firebaseConfig = {
    apiKey: "AIzaSyAQSiYoYcm4-a2672XHJDvi2wYzXfgKxk8",
    authDomain: "waggy-tails-8d2ab.firebaseapp.com",
    databaseURL: "https://waggy-tails-8d2ab-default-rtdb.firebaseio.com",
    projectId: "waggy-tails-8d2ab",
    storageBucket: "waggy-tails-8d2ab.appspot.com",
    messagingSenderId: "1035325280279",
    appId: "1:1035325280279:web:9237427e574de9e4ae0c52",
    measurementId: "G-XJGCMKWQHK"
};

// Initialize Firebase
const firebaseApp = initializeApp(firebaseConfig);

// Export Firebase services as needed
const auth = getAuth(firebaseApp);
const db = getDatabase(firebaseApp);

export { auth, db };
export { firebaseApp };

</script>


<main>

  <Router>

    <Header/>
    <Route path="/">
      <Home/>
    </Route>

    <Route path="/about" component={About}></Route>
    <Route path="/covid-19" component={CovidChart}></Route>
    <Route path="/register" component={Register}></Route>
    <Route path="/login" component={Login}></Route>
    <Route path="/dashboard/profile" component={Profile}></Route>
    <Footer/>
  </Router>

  

</main>

