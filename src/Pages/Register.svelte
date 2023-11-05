<svelte:head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://demos.phplift.net/country-state-and-city-dropdown-jquery/js/countrystatecity.js?v3"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

</svelte:head>

<script>

import { getAuth, createUserWithEmailAndPassword } from 'firebase/auth';
  import { getDatabase, ref, set } from 'firebase/database';
  import { updateProfile, sendEmailVerification } from 'firebase/auth';
 

  const auth = getAuth();
  const db = getDatabase();

  async function handleRegistration() {
    try {
      const userCredential = await createUserWithEmailAndPassword(auth, email, password);
      const user = userCredential.user;

      // Store user data in the Realtime Database
      const userRef = ref(db, 'users/' + user.uid);
      const timestamp = new Date().toISOString();
      set(userRef, {
        fullName: fullName,
        gender: gender,
        dateOfBirth: dateOfBirth,
        phoneNumber: phoneNumber,
        email: email,
        pincode: pincode,
        city: city || '', 
  state: state || '', 
  country: country || '',
        created_at: timestamp,
        updated_at: timestamp,
      });

      // Update the user's display name
      await updateProfile(user, {
        displayName: fullName,
      });

      // Send email verification
      await sendEmailVerification(user);

      // Show a success message
      Swal.fire({
        icon: 'success',
        title: '🎉 Registration Successful 🎉',
        html: `
          <p>Thank you for being a superhero!</p>
          <p>Your blood donation will save lives, and we can't thank you enough.</p>
          <p>Get ready to wear your cape (or bandage) with pride! 💪🩸</p>
        `,
        showConfirmButton: false,
        timer: 5000, // 2 seconds
      });

      // Redirect to the email verification Svelte component
      // Add your code to navigate to the verification component here
    } catch (error) {
      Swal.fire({
        icon: 'error',
        title: 'Registration Failed',
        text: error.message,
      });
    }
  }

import Swal from 'sweetalert2';


import 'intl-tel-input/build/css/intlTelInput.css';
  import intlTelInput from 'intl-tel-input';


  let selectedCountry = 'us';

  let inputElement;

  import { onMount } from 'svelte';
  onMount(() => {
    inputElement = document.getElementById('phone-input');

    const iti = intlTelInput(inputElement, {
      initialCountry: selectedCountry,
      separateDialCode: true,
      utilsScript: '/path-to-utils.js', // Update this path to the utils script
    });

    iti.promise.then((data) => {
      phoneNumber = data.intlNumber;
      selectedCountry = data.selectedCountryData.iso2;
    });
  });

  function handlePhoneNumberChange() {
    phoneNumber = inputElement.value;
  }

  function handleCountryChange() {
    selectedCountry = inputElement.getAttribute('data-country');
  }


import Banner from "../Components/InnerBanner.svelte";
  
  let pageLinks = [
    { text: 'Home', url: '/' },
    { text: 'Registration' },
  ];
 

  onMount(() => {
    const inputFields = document.querySelectorAll('input[autocomplete="off"]');
    inputFields.forEach(input => {
      input.setAttribute('autocomplete', 'new-password');
    });
  });

// Add a click event listener to the toggle button

let password = '';
let showPassword = false;
let passwordStrength = "Weak";
let showSuccessAlert;

function checkPasswordStrength() {
    // Define a regular expression for a strong password (e.g., at least 8 characters, including upper case, lower case, and numbers)
    const strongPasswordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;

    if (strongPasswordRegex.test(password)) {
      passwordStrength = "Strong";
       showSuccessAlert = true;
    } else {
      passwordStrength = "Weak";
      showSuccessAlert = false;
    }
  }

  

  function togglePasswordVisibility() {
    showPassword = !showPassword;
  }
  let fullName = '';
    let gender = '';
    let dateOfBirth = '';
    let phoneNumber = '';
    let email = '';
    let pincode = '';
    let city = '';
    let state = '';
    let country = '';
  
    function handleSubmit() {
      // Handle form submission here
    }

</script>



<style>

.gender-radio-group {
  display: flex;
  flex-direction: column;
}

.radio-option {
  display: flex;
  align-items: center;
  margin: 10px 0;
}

.radio-option input[type="radio"] {
  display: none; /* Hide the default radio input */
}

.radio-option label {
  cursor: pointer;
  user-select: none;
  padding-left: 25px;
  position: relative;
}

.radio-option label i {
  position: absolute;
  left: 0;
  top: 50%;
  transform: translateY(-50%);
  margin-right: 10px;
  font-size: 20px;
}

.radio-option input[type="radio"]:checked + label {
  font-weight: bold;
  color: #31795a; /* Change the color when selected */
}

.password-strength {
  font-weight: bold;
  color: var(--password-strength-color, red);
}

.strong-password {
    color: green; /* Set the color to green for a strong password */
  }


  /* Style the select container */
.select-container {
  position: relative;
  width: 100%;
  max-width: 300px; /* Adjust as needed */
}

/* Style the select box */
select {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: rgba(49, 121, 90, .09);
  color: #333;
  font-size: 16px;
  cursor: pointer;
  outline: none;
}

/* Style the arrow icon */
.select-container::after {
  content: '▼'; /* Unicode character for down arrow */
  position: absolute;
  top: 50%;
  right: 10px;
  transform: translateY(-50%);
  font-size: 20px;
  color: #555;
  pointer-events: none;
}

/* Style the select when focused */
select:focus {
  border-color: #31795a; /* Change to your preferred focus color */
  box-shadow: 0 0 5px rgba(49, 121, 90, 0.657); /* Change to your preferred focus shadow */
}


input {
  width: 100% !important;
}
</style>

<div class="main-page-wrapper">
  <div>
    <Banner title="Donor Candidates Registration"  />
    <!-- Other content for the "About" page -->
  </div>

  <section class="registration-section position-relative pt-100 lg-pt-80 pb-150 lg-pb-80">
    <div class="container">
      <div class="user-data-form">
        <div class="text-center">
          <h2>Create Account</h2>
        </div>
        <div class="form-wrapper m-auto">
        
          <div class="tab-content mt-40">
            <div class="tab-pane fade show active" role="tabpanel" id="fc1">
              <form on:submit={handleSubmit}>
                <div class="row">
                  <div class="col-12">
                    <div class="input-group-meta position-relative mb-25">
                      <label for="fullName">Name*</label>
                      <input type="text" placeholder="Enter your Name" bind:value={fullName} autocomplete="off"/>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="gender-radio-group">
                      <label for="gender">Gender*</label>
                      <div class="radio-option">
                        <input type="radio" id="male" name="gender" value="male" bind:group={gender} autocomplete="off"/>
                        <label for="male">
                          <i class="fas fa-mars"></i> <!-- Font Awesome male icon -->
                          Male
                        </label>
                      </div>
                  
                      <div class="radio-option">
                        <input type="radio" id="female" name="gender" value="female" bind:group={gender} autocomplete="off"/>
                        <label for="female">
                          <i class="fas fa-venus"></i> <!-- Font Awesome female icon -->
                          Female
                        </label>
                      </div>
                    </div>
                  </div>
                  
                  
                  <div class="col-12">
                    <div class="input-group-meta position-relative mb-25">
                      <label for="dateOfBirth">Date of Birth*</label>
                      <input type="date" bind:value={dateOfBirth} autocomplete="off"/>
                    </div>
                  </div>


                <div class="col-12">
  <div class="input-group-meta position-relative mb-25">
    <label class="phone1" for="phoneNumber">Phone Number*</label>
    <input
    bind:value={phoneNumber}
      type="tel"
      placeholder="Enter your Phone Number"
      pattern="[0-9]*"
    />
  </div>
</div>


                  <div class="col-12">
                    <div class="input-group-meta position-relative mb-25">
                      <label for="cpassword">Pincode</label>
                        <input type="text " inputmode="numeric" oninput="this.value = this.value.replace(/[^0-9]/g, '')"  minlength="5"
                        maxlength="6" pattern="[0-9]*" placeholder="Enter your Pincode" bind:value={pincode} autocomplete="off"/>
                    </div>
                  </div>


                  <div class="col-12">
                    <div class="input-group-meta position-relative mb-25">
                      <label for="city">City</label>
                      <input type="text" placeholder="Enter your City" value={city} autocomplete="off"/>
                    </div>
                  </div>
                 
                  
                  <div class="col-12">
                    <div class="input-group-meta position-relative mb-25">
                      <label for="state">State</label>
                      <input type="text" placeholder="Enter your State" value={state} autocomplete="off"/>
                    </div>
                  </div>
                  
                
 <div class="col-12">
                    <div class="input-group-meta position-relative mb-25">
                      <label for="country">Country</label>
                      <input type="text" placeholder="Enter your Country" value={country} autocomplete="off"/>
                    </div>
                  </div>

                  <div class="col-12">
                    <div class="input-group-meta position-relative mb-25">
                      <label for="phoneNumber">Email*</label>
                      <input type="email" placeholder="Enter your Email" bind:value={email} autocomplete="off"/>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="input-group-meta position-relative mb-20">
                      <label for="password">Password* <span class="password-strength {passwordStrength === 'Strong' ? 'strong-password' : ''}">{passwordStrength}</span></label>
                      {#if showPassword}
                        <input
                          type="text"
                          placeholder="Enter Password"
                          bind:value={password} on:input={checkPasswordStrength}
                          autocomplete="off"
                          
                        />
                      {:else}
                        <input
                          type="password"
                          placeholder="Enter Password"
                          bind:value={password}
                          autocomplete="off"
                        />
                      {/if}
                      <div class="mt-3">
                        <button type="button" class="toggle-password" on:click={togglePasswordVisibility}>
                            {showPassword ? 'Hide Password' : 'Show Password'}
                          </button>
                      </div>
                      
                    </div>
                  </div>
                  
                  {#if showSuccessAlert}
<div class="alert alert-info alert-dismissible fade show " role="alert">
     
    Congratulations! Your password is hacker-proof. 🚀💪
  <button style="padding: 6px 4px;" type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
{/if}
                  <div class="col-12">
                    <div class="agreement-checkbox d-flex justify-content-between align-items-center">
                      <div>
                        <input type="checkbox" id="remember">
                        <label for="remember">By hitting the "Register" button, you agree to the <a href="/">Terms conditions</a> & <a href="/">Privacy Policy</a></label>
                      </div>
                    </div>
                  </div>
                  <div class="col-12">
                    <button type="button" class="btn-eleven fw-500 tran3s d-block mt-20" on:click={handleRegistration}>Register</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
  
          <div class="d-flex align-items-center mt-30 mb-10">
            <div class="line"></div>
            <span class="pe-3 ps-3">OR</span>
            <div class="line"></div>
          </div>
        
          <p class="text-center mt-10">Have an account? <a href="/" class="fw-500" data-bs-toggle="modal" data-bs-target="#loginModal">Sign In</a></p>
        </div>
        <!-- /.form-wrapper -->
      </div>
      <!-- /.user-data-form -->
    </div>
  </section>
</div>


  