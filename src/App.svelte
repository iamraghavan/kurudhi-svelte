<script>
import { Router, Route } from "svelte-routing";
  import Header from "./Components/Header.svelte";
  import Home from "./Pages/Home.svelte";
  import About from "./Pages/About.svelte";
  import Footer from "./Components/Footer.svelte";
  import CovidChart from "./Pages/CovidChart.svelte";
  import Register from "./Pages/Register.svelte";
  import { firebaseApp } from './firebase.js';

</script>


<main>

  <Router>

    <Header/>
    <Route path="/">
      <Home/>
    </Route>

    <Route path="/about" component={About}></Route>
    <Route path="/covid-19" component={CovidChart}></Route>
    <Route path="register" component={Register}></Route>
    <Footer/>
  </Router>

  

</main>

