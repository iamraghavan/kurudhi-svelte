<!-- Footer.svelte -->
<svelte:head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.1/font/bootstrap-icons.min.css" integrity="sha512-oAvZuuYVzkcTc2dH5z1ZJup5OmSQ000qlfRvuoTTiyTBjwX1faoyearj8KdMq0LgsBTHMrRuMek7s+CxF8yE+w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</svelte:head>

<script>

import {Link} from 'svelte-routing';


const userAgent = navigator.userAgent;
const browserVersionStart = userAgent.lastIndexOf(') ') + 2;
const browserVersion = userAgent.substring(browserVersionStart);
const osplatform = navigator.platform;



  let browserLanguage = navigator.language;

    let logo = {
      src: "images/logo/logo_04.png",
      alt: "Logo",
    };
  
    let services = [
      { text: "Browse Jobs", link: "job-grid-v2.html" },
      { text: "Companies", link: "company-v1.html" },
      { text: "Candidates", link: "candidates-v1.html" },
      { text: "Pricing", link: "pricing.html" },
    ];
  
    let company = [
      { text: "About us", link: "/about" },
      { text: "Covid-19", link: "/covid-19" },
      { text: "FAQ’s", link: "faq.html" },
      { text: "Contact", link: "contact.html" },
    ];
  
    let support = [
      { text: "Terms of use", link: "contact.html" },
      { text: "Terms & conditions", link: "contact.html" },
      { text: "Privacy", link: "contact.html" },
      { text: "Cookie policy", link: "contact.html" },
    ];
  
    let newsletter = {
      title: "Newsletter",
      description: "Join & get important news regularly",
    };
  
    // let socialIcons = [
    //   { icon: "bi bi-whatsapp" },
    //   { icon: "bi bi-dribbble" },
    //   { icon: "bi bi-google" },
    //   { icon: "bi bi-instagram" },
    // ];
  
    let bottomLinks = [
      { text: "Privacy & Terms.", link: "contact.html" },
      { text: "Contact Us", link: "contact.html" },
    ];

    let currentYear = new Date().getFullYear();
  let copyright = `Copyright @2020 - ${currentYear} kurudhi.com`;
  
    
  </script>

  <style>

@import url('https://fonts.googleapis.com/css2?family=McLaren&display=swap');
    /* Style for the p tag */
.showos {
  font-size: 16px; /* Adjust the font size as needed */
  color: #333; /* Text color */
  margin: 0; /* Remove any default margins */
  display: inline; /* Display the p tags inline */
}

/* Style for the separator (|) between browserLanguage and osplatform */
.showos::before {
  /* Separator content */
  margin: 0 8px; /* Adjust the spacing as needed */
  color: #666; /* Separator color */
}

  </style>
  
  <div class="footer-one">
    <div class="container">
      <div class="inner-wrapper">
        <div class="row">
          <div class="col-lg-3 col-md-3 footer-intro mb-6">
            <div class="logo mb-15">
              <a href="index.html" class="d-flex align-items-center">
                <img src={logo.src} alt={logo.alt} style="height: auto; width: 14rem;">
              </a>
              <div class="mt-4">
                <p>{browserVersion}</p>
                <p class="showos">{browserLanguage} | {osplatform}</p>
              </div>
             
            </div>
            <img src="images/lazy.svg" data-src="images/shape/shape_28.svg" alt="" class="lazy-img mt-80 sm-mt-30 sm-mb-20">
          </div>
          <div class="col-lg-2 col-md-3 col-sm-4 mb-6">
            <h5 class="footer-title">Services​</h5>
            <ul class="footer-nav-link style-none">
              {#each services as service (service.text)}
              <li><Link to={service.link}>{service.text}</Link></li>
              {/each}
            </ul>
          </div>
          <div class="col-lg-2 col-md-3 col-sm-4 mb-6">
            <h5 class="footer-title">Company</h5>
            <ul class="footer-nav-link style-none">
              {#each company as c (c.text)}
              <li><Link to={c.link}>{c.text}</Link></li>
              {/each}
            </ul>
          </div>
          <div class="col-lg-2 col-md-3 col-sm-4 mb-6">
            <h5 class="footer-title">Support</h5>
            <ul class="footer-nav-link style-none">
              {#each support as s (s.text)}
              <li><a href={s.link}>{s.text}</a></li>
              {/each}
            </ul>
          </div>
          <div class="col-lg-3 mb-6 footer-newsletter">
            <p style="font-size: 1.1rem; font-family: 'McLaren', sans-serif;"> Powered by </p>
    <img style="width: 8rem; height:auto;" src="images/f-logo.svg" alt="Company Logo" class="company-logo">
          </div>
        </div>
      </div> <!-- /.inner-wrapper -->
    </div>
    <div class="bottom-footer">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-4 order-lg-3 mb-15">
            <ul class="style-none d-flex order-lg-last justify-content-center justify-content-lg-end social-icon">
                <li><a href="/"><i class="bi bi-whatsapp"></i></a></li>
                <li><a href="/"><i class="bi bi-dribbble"></i></a></li>
                <li><a href="/"><i class="bi bi-google"></i></a></li>
                <li><a href="/"><i class="bi bi-instagram"></i></a></li>
            </ul>
          </div>
          <div class="col-lg-4 order-lg-1 mb-15">
            <ul class="d-flex style-none bottom-nav justify-content-center justify-content-lg-start">
              {#each bottomLinks as link (link.text)}
              <li><a href={link.link}>{link.text}</a></li>
              {/each}
            </ul>
          </div>
          <div class="col-lg-4 order-lg-2">
            <p class="text-center mb-15">{copyright}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  