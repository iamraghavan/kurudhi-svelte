<svelte:head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.1/font/bootstrap-icons.min.css" integrity="sha512-oAvZuuYVzkcTc2dH5z1ZJup5OmSQ000qlfRvuoTTiyTBjwX1faoyearj8KdMq0LgsBTHMrRuMek7s+CxF8yE+w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title> Welcome to Karikalan Magic show ! </title>

</svelte:head>

<script>
  import {Link} from 'svelte-routing';




let mobHeaderLogo = {

    src: "./images/logo/logo_04.png",
    alt: "Logo Image",
    width: "100",
    style: "width: 14rem; height: auto;"

}

let logoImage = {
    src: "images/logo/logo_04.png",
    alt: "Logo Image",
    style: "width: 14rem; height: auto; padding-bottom: 7px;",
  };

</script>
  
  <header class="theme-main-menu menu-overlay sticky-menu">
    <div class="inner-content position-relative">
      <div class="top-header">
        <div class="d-flex align-items-center">
          <div class="logo order-lg-0">
            <a href="/" class="d-flex align-items-center">
                <img style={logoImage.style} src={logoImage.src} alt={logoImage.alt}>
            </a>
          </div>
          <!-- logo -->
          <div class="right-widget ms-auto ms-lg-0 order-lg-2">
            <ul class="d-flex align-items-center style-none">
              <li><a href="/" class="fw-500 text-dark" data-bs-toggle="modal" data-bs-target="#loginModal">Login</a></li>
              <li class="d-none d-md-block ms-4"><Link to="/register" class="btn-five">Register</Link></li>
            </ul>
          </div> <!--/.right-widget-->
  

          <nav class="navbar navbar-expand-lg p0 me-lg-auto ms-3 ms-lg-5 order-lg-1">
            <button class="navbar-toggler d-block d-lg-none" type="button" data-bs-toggle="collapse"
              data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
              aria-label="Toggle navigation">
              <span></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="d-block d-lg-none">
                  <div class="logo">
                    <a href="/" class="d-block"><img style={mobHeaderLogo.style} src={mobHeaderLogo.src} alt={mobHeaderLogo.alt} width={mobHeaderLogo.width}></a>
                  </div>
                </li>
                
                <li class="nav-item dropdown">
                  <!-- <a > -->
                    
<Link to="/" class="nav-link" role="button"
                    data-bs-auto-close="outside" aria-expanded="false">Home</Link>
                      
                    
                    
                  <!-- </a> -->
                  
                </li>
                <li class="nav-item dropdown">
                  <!-- <a class="nav-link" href="/" role="button" data-bs-toggle="dropdown"
                    data-bs-auto-close="outside" aria-expanded="false"> -->
                    
                   
                    

                    <Link to="about" class="nav-link" role="button" 
                    data-bs-auto-close="outside" aria-expanded="false">About us</Link>
                  <!-- </a> -->
                  
                </li>
                <li class="nav-item dropdown mega-dropdown-sm">
                  <a class="nav-link dropdown-toggle" href="/" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Blood Donar
                  </a>
                  <ul class="dropdown-menu">
                    <li class="row gx-1">
                      <div class="col-md-6">
                        <div class="menu-column">
                          <h6 class="mega-menu-title">Manage My Donations
                            
                            
                            
                            </h6>
                          <ul class="style-none mega-dropdown-list">
                           
                            <li><a href="company-v1.html" class="dropdown-item"><span>My Profile</span></a></li>
                            <li><a href="company-v2.html" class="dropdown-item"><span>Forget Donar Account</span></a></li>
                            <!-- <li><a href="company-v3.html" class="dropdown-item"><span>Go to My Profile</span></a></li> -->
                            <li><a href="company-v4.html" class="dropdown-item"><span>Get Digital Donor Card</span></a></li>
                            
                        </ul>
                        </div> 
                      </div>
                      <div class="col-md-6">
                        <div class="menu-column">
                          <h6 class="mega-menu-title">How to Donate</h6>
                          <ul class="style-none mega-dropdown-list">
                            <li><a href="candidates-v1.html" class="dropdown-item"><span>Find a Blood Drive</span></a></li>
                            <li><a href="candidates-v2.html" class="dropdown-item"><span>Eligibility  Requirements</span></a></li>
                            <li><a href="candidates-v3.html" class="dropdown-item"><span>Types of Blood Donations</span></a></li>
                            <li><a href="candidates-v4.html" class="dropdown-item"><span>Learn About Blood</span></a></li>
                            


                          </ul>
                        </div> 
                      </div>
                      
                    </li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="/" role="button" data-bs-toggle="dropdown"
                    data-bs-auto-close="outside" aria-expanded="false">Find a Donar
                  </a>
                  <ul class="dropdown-menu">
                    <li><a href="blog-v1.html" class="dropdown-item"><span>Blog Standard</span></a></li>
                    <li><a href="blog-v2.html" class="dropdown-item"><span>Blog Grid</span></a></li>
                    <li><a href="blog-v3.html" class="dropdown-item"><span>Blog Full width</span></a></li>
                    <li><a href="blog-details.html" class="dropdown-item"><span>Blog Details</span></a></li>
                  </ul> 
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.html" role="button">Contact</a>
                </li>
                <li class="d-md-none mt-5"><Link to="/register" class="btn-five w-100">Register</Link></li>
              </ul>
            </div>
          </nav>

        </div>
      </div> 
    </div> 
  </header>
  

 
