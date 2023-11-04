<script>
  import { onMount } from 'svelte';

  import Banner from "../Components/InnerBanner.svelte";
  
    let pageLinks = [
      { text: 'Home', url: '/' },
      { text: 'Covid - 19' },
    ];
   
    
  onMount(() => {
    // Fetch COVID-19 data
    fetch('https://data.covid19india.org/v4/min/data.min.json')
      .then(response => response.json())
      .then(data => {
        // Extract the relevant data from the API response
        const timeline = data[Object.keys(data)[0]].total;
        const dates = Object.keys(timeline);
        const totalCases = dates.map(date => timeline[date]);

        // Create a Chart.js line chart
        const ctx = document.getElementById('covidChart').getContext('2d');
        new Chart(ctx, {
          type: 'line',
          data: {
            labels: dates,
            datasets: [{
              label: 'Total Cases',
              data: totalCases,
              borderColor: 'blue',
              fill: false,
            }],
          },
          options: {
            responsive: true, // Make the chart responsive
            maintainAspectRatio: false,
            title: {
              display: true,
              text: 'COVID-19 Statistics in India',
            },
          },
        });
      })
      .catch(error => console.error('Error fetching data:', error));
  });


</script>

<style>
  
#covidChart {
    width: 100%;
    max-width: 800px;
    margin: 0 auto;
    font-family: 'Arial', sans-serif;
  }
</style>

<Banner title="Covid - 19" {pageLinks} />
<div class="main-page-wrapper">
  
  <section class="company-profiles bg-color pt-90 lg-pt-70 pb-160 xl-pb-150 lg-pb-80">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="accordion-box list-style show">
            <canvas id="covidChart"></canvas>
          </div>
        </div>
        <div class="col-12">
          <div class="accordion-box list-style show">
           
          </div>
        </div>
      </div>
       <!-- This is where the Google Chart will be displayed -->
    </div>
  </section>




</div>


