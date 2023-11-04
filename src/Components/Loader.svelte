<script>

    let loader = {
        loader_logo : "images/loader.svg",
        loader_alt : "Kurudhi.com",
        loader_title : "Kurudhi",
    }

</script>
  
  <div id="preloader">
    <div id="ctn-preloader" class="ctn-preloader">
      <div class="icon">
        <img src={loader.loader_logo} alt={loader.loader_alt} title={loader.loader_title} class="m-auto d-block" width="60">
      </div>
      <div class="txt-loading">
        <!-- Use each block for the letters -->
        {#each ['K', 'U', 'R', 'U', 'T', 'H', 'I'] as letter (letter)}
          <span data-text-preloader={letter} class="letters-loading">{letter}</span>
        {/each}
      </div>
    </div>
  </div>
  

  