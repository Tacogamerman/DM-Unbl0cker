<iframe class="iframe" id="iframe"></iframe>
<img class="back" id="back" src = "/img/back.png" onclick="reroutetoapps();"/>
<style>
  .back{
    position: absolute;
    width: 50px;
    height: 50px;
    top:1%;
    left:1%;
  }
  .iframe{
    position: absolute;
    width:100%;
    height: 100%;
    left:0px;
    top:0px;
    border: none;
  }
</style>

<script>
  window.navigator.serviceWorker.register('/sw.js');
  function get_cookie(cookie_name) { const value = "; " + document.cookie; const parts = value.split("; " + cookie_name + "="); if (parts.length === 2) return parts.pop().split(";").shift(); } 
  
  var title2=get_cookie("title2");
  var favicon=get_cookie("favicon");
  
  if (favicon==null || favicon==undefined || favicon==""){
        favicon="/img/logo.png";
        document.cookie="favicon="+favicon+"; expires=Thu, 18 Dec 9013 12:00:00 UTC; path=/";
        (function() {
           var link=document.querySelector("link[rel*='icon']") || document.createElement('link');
           link.type='image/x-icon';
           link.rel='shortcut icon';
           link.href=favicon;
           document.getElementsByTagName('head')[0].appendChild(link);
       })();
    }
    else{
        (function() {
           var link=document.querySelector("link[rel*='icon']") || document.createElement('link');
           link.type='image/x-icon';
           link.rel='shortcut icon';
           link.href=favicon;
           document.getElementsByTagName('head')[0].appendChild(link);
       })();
    }
    if (title2==null || title2==undefined || title2==""){
        title2="DM Unbl0cker";
        document.cookie="title2="+title2+"; expires=Thu, 18 Dec 9013 12:00:00 UTC; path=/";
        document.title=title2;
    }
    else{
        document.title=title2;
    }
</script>

<script>
  function reroutetoapps(){
    window.location.pathname="/apps";
  }
</script>
<script>
  iframe.src=window.location.origin+"/service/hvtrs8%2F-svaakmvgrdlmw%2Ccmm-";
</script>
