<svelte:head>
    <title>Kurudhi.com Login</title>
</svelte:head>

<script>
    let email = '';
    let password = '';
  
    import { onMount } from 'svelte';

  import { getAuth, signInWithEmailAndPassword } from 'firebase/auth';
  import { navigate } from 'svelte-routing';
  const auth = getAuth();

 
  
    onMount(() => {
      const inputFields = document.querySelectorAll('input[autocomplete="off"]');
      inputFields.forEach((input) => {
        input.setAttribute('autocomplete', 'new-password');
      });
    });
  
    import Banner from "../Components/InnerBanner.svelte";
  
    let showPassword = false;
    let passwordStrength = '';
    let showSuccessAlert = false;
  
    function togglePasswordVisibility() {
      showPassword = !showPassword;
    }
  
    let pageLinks = [
      { text: 'Home', url: '/' },
      { text: 'Donor Login' },
    ];
  
    async function handleLogin() {
  // Perform Firebase login logic here
  try {
    // Assuming you have successfully authenticated the user
    const user = {
      email: 'user@example.com', // Replace with the user's email
      uid: 'your-uid', // Replace with the user's UID
    };

    // Redirect to the profile component with email and UID as route parameters
    navigate(`/profile/${user.email}/${user.uid}`);
  } catch (error) {
    // Handle login error
  }
}
  </script>

<div class="main-page-wrapper">
    <div>
      <Banner title="Donor Candidates Login"  />
      <!-- Other content for the "About" page -->
    </div>
  
    <section class="registration-section position-relative pt-100 lg-pt-80 pb-150 lg-pb-80">
      <div class="container">
        <div class="user-data-form">
          <div class="text-center">
            <h2>Login to your Account</h2>
          </div>
          <div class="form-wrapper m-auto">
          
            <div class="tab-content mt-40">
              <div class="tab-pane fade show active" role="tabpanel" id="fc1">
                <form>
                  <div class="row">
                 
  
  
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
                            bind:value={password}
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
                    
                  
                    <div class="col-12">
                      <div class="agreement-checkbox d-flex justify-content-between align-items-center">
                        <div>
                          <input type="checkbox" id="remember">
                          <label for="remember">By hitting the "Register" button, you agree to the <a href="/">Terms conditions</a> & <a href="/">Privacy Policy</a></label>
                        </div>
                      </div>
                    </div>
                    <div class="col-12">
<button type="button" class="btn-eleven fw-500 tran3s d-block mt-20" on:click={handleLogin}>Login</button>
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
