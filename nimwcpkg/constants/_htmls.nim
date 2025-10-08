## Static string HTML constants, do NOT put any run-time logic here, only consts.
## Do NOT import this file directly, instead import ``constants.nim``
import strutils, ../webs/html_utils

const
  inputNumber* = r"""
    <input type="tel" value="$1" name="$2" class="$3" id="$4" placeholder="$5" title="$5"
    $6 min="$7" max="$8" maxlength="$9" step="1" pattern="\d*" autocomplete="off" dir="auto">
  """

  inputFile* = r"""
    <input type="file" name="$1" class="$2" id="$3" title="$5" accept="$5" $4
    onChange="if(!this.value.toLowerCase().match(/(.*?)\.($6)$$/)){alert('Invalid File Format. ($5)');this.value='';return false}">
  """

  imageLazy* = r"""
    <img class="$5" id="$2" alt="$6" data-src="$1" src="" lazyload="on" onclick="this.src=this.dataset.src" onmouseover="this.src=this.dataset.src" width="$3" heigth="$4"/>
    <script>
      const i = document.querySelector("img#$2");
      window.addEventListener('scroll',()=>{if(i.offsetTop<window.innerHeight+window.pageYOffset+99){i.src=i.dataset.src}});
      window.addEventListener('resize',()=>{if(i.offsetTop<window.innerHeight+window.pageYOffset+99){i.src=i.dataset.src}});
    </script>
  """

  head* = """<meta charset="utf-8">
<meta name="generator" content="SecreneT Site">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="author" href="humans.txt">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/fontAwesome.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/style_custom.css">
<script src="/js/js.js" crossorigin="anonymous" defer></script>
<script src="/js/js_custom.js" crossorigin="anonymous" defer></script>"""


  headOfficial* = """<meta charset="utf-8">
<meta name="generator" content="SecreneT Site">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="author" href="humans.txt">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/fontAwesome.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/style_custom.css">
<script src="/js/js.js" crossorigin="anonymous" defer></script>
<script src="/js/js_custom.js" crossorigin="anonymous" defer></script>"""


  headClean* = """<meta charset="utf-8">
<meta name="generator" content="SecreneT Site">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="author" href="humans.txt">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/fontAwesome.css">
<link rel="stylesheet" href="/css/style_custom.css">
<script src="/js/js_custom.js" crossorigin="anonymous" defer></script>"""


  headBootstrap* = """<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="author" href="humans.txt">
<link rel="stylesheet" href="https:/css/bootstrap.min.css" integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y=" crossorigin="anonymous" />
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/fontAwesome.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/style_custom.css">
<script src="/js/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js" integrity="sha256-x3YZWtRjM8bJqf48dFAv/qmgL68SI4jqNWeSLMZaMGA=" crossorigin="anonymous" defer></script>
<script src="/js/bootstrap.min.js" integrity="sha256-WqU1JavFxSAMcLP2WIOI+GB2zWmShMI82mTpLDcqFUg=" crossorigin="anonymous" defer></script>
<script src="/js/js.js" crossorigin="anonymous" defer></script>
<script src="/js/js_custom.js" crossorigin="anonymous" defer></script>"""


  navbar* = """<nav class="navbar is-transparent is-fixed-top" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
   
  </div>
  <div id="navbarMain" class="navbar-menu">
  
 
  </div>
</nav>"""


  navbarClean* = """<nav>
  
  
</nav>"""


  navbarBootstrap* = """<nav id="navbar" class="navbar navbar-expand-md navbar-light">
  <div id="navbarInside">
  
    
  </div>
</nav>"""


  navbarOfficial* = """<nav class="navbar is-transparent is-fixed-top is-hidden-mobile" role="navigation" aria-label="main navigation">
  <div class="navbar-brand"> 
            
  </div>
</nav>"""

  footerClean* = minifyHtml"""

   
  """


  footer* = """<div class="container" class="footer is-light">
  
</div>"""

  about* = """<div id="about">
  
</div>"""


  frontpageClean* = """<style> #background{ background-image: none !important } </style>
          
<div id="frontpage">

"""


  frontpage* = """<div id="frontpage">
  
  """
  
  
  blogpost1* = """<div id="mainContainer" class="blogpage">
  
</div>"""


  blogpost2* = """<style>
  body [class*="para_"] {
    position: relative;
    height: 300px;
    background-attachment: fixed;
    background-position: top center;
    background-size: cover;
  }
  body [class*="para_"]:nth-child(2n) {
    box-shadow: inset 0 0 1em #111;
  }
  body .para {
    height: 100vh;
  }
  body .para_foo {
    background-image: url(/images/par1b.jpg);
  }
  body .para_bar {
    background-image: url(/images/par2b.jpg);
  }
  body .para_baz {
    background-image: url(/images/par3b.jpg);
  }
</style>
<div>
  <div class="para para_foo">
    <div style="padding-top: 100px;max-width: 200px;margin-left: auto;margin-right: auto;">
      <div class="animated bounceInRight go reveal reveal-left" style="background: black;color: white;padding: 20px;border-radius: 10px;text-align: center;">
        <h1>First parallax</h1>
      </div>
    </div>
  </div>
  <div class="para para_bar">
    <div style="background: white;color: black;padding: 20px;border-radius: 10px;text-align: center;max-width: 200px;margin-left: auto;margin-right: auto;">
        <h1>Second parallax</h1>
      </div>
  </div>
  <div class="para para_baz">
    <div style="background: white;color: black;padding: 20px;border-radius: 10px;text-align: center;max-width: 200px;margin-left: auto;margin-right: auto;">
      <h1>Third parallax</h1>
    </div>
  </div>
</div>"""


  blogpost3* = """<div style="background: white; color: black; padding: 20px; max-width: 1200px; padding: 20px; border-radius: 10px; margin-left: auto; margin-right: auto; margin-top: 100px;">
  <h1>Standard blog
  </h1>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  </p>
  <p>
    <br>
  </p>
  <div>
    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
      <br>
    </p>
  </div>
</div>
<div style="height: 50px; background: transparent;">
</div>
<div class="container-fluid" style="max-width: 1200px; margin-left: auto; margin-right: auto;">
  <div class="columns row">
    <div class="column col-12 col-sm-6">
      <div style="background: white; color: black; padding: 25px; border-radius: 10px;">
        <h2 style="text-align: center;">UNO
        </h2>
      </div>
    </div>
    <div class="column col-12 col-sm-6">
      <div style="background: white; color: black; padding: 25px; border-radius: 10px;">
        <h2 style="text-align: center;">DUO
        </h2>
      </div>
    </div>
  </div>
</div>
<div style="height: 50px; background: transparent;">
</div>
<div style="background: white; color: black; padding: 20px; max-width: 1200px; padding: 20px; border-radius: 10px; margin-left: auto; margin-right: auto; margin-bottom: 150px; text-align: right;">
  <h1 style="text-align: right;">Standard blog
  </h1>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  </p>
  <p>
    <br>
  </p>
  <div>
    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
      <br>
    </p>
  </div>
</div>"""


  adminErrorMsg* = """

    <!DOCTYPE html>
    <center>
      <h1>Error Logs</h1>
      <p>Hi Admin, an error occurred at $3 </p>
      <textarea name="logs" id="logs" title="Log Size: $2 Lines." dir="auto" rows=20 readonly autofocus spellcheck style="width:99% !important;">
        $1
      </textarea>
      <br>
      <a title="Copy Logs" onclick="document.querySelector('#logs').select();document.execCommand('copy')">
        <button>Copy</button>
      </a>
      <br>
    </center>

  """


  mailStyleFrom* = minifyHtml"""

    <hr style="margin-top:40px;margin-bottom:20px;">
    <div> <b>Kind regards</b> </div>

  """


  mailStyleHeaderMsg* = minifyHtml"""

    <!DOCTYPE html>
      <html lang="EN" style="3D&quot;background:#FAFAFA;min-height:100%=">
        <head>
          <meta charset="UTF-8">
          <meta content="width=device-width, initial-scale=1.0" name="viewport">
          <title></title>
        </head>
        <body style="font-size:16px;font-family:'Roboto';font-style:normal;font-weight:400;src:local('Roboto'),local('Roboto-Regular'),url(https://fonts.gstatic.com/s/roboto/v18/CWB0XYA8bzo0kSThX0UTuA.woff2) format('woff2');unicode-range:U+0000-00FF,U+0131,U+0152-0153,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2212,U+2215;">
          <div style="background:#171921;border-color:#123d6d;height:70px;width:100%;margin-bottom:20px;padding-top:5px;padding-bottom:5px;text-align:center;">
            <a href="$1" style="color:white;font-size:22px;line-height:64px;"> $2 </a>
          </div>
          <div style="padding:0 9px">

  """


  mailStyleFooterMsg* = minifyHtml"""

        </div>
          <div style="background:#171921;border-color:#123d6d;height:35px;width:100%;margin-top:20px;text-align:center;">
            <div style="height:100%;font-size:18px;margin-left:15px;line-height:36px;">
              <a href="$1" style="color:white;"> $2 </a>
            </div>
          </div>
      </body>
    </html>

  """


  activationMsg* = minifyHtml"""

    <h3>Hello $1 </h3>
    <br><br>
    $2 has created a user account for you on $7.
    <br><br>
    As the final step in your registration, we require that you confirm your email
    via the following link:
    <br>
    $5
    <br><br>
    To login use the details below. On your first login, please navigate to your settings and <b>change your password!</b>
    <ul>
      <li>Email:   <code> $3 </code></li>
      <li>
        Password:
        <input type="text" title="Password" onClick="this.select();document.execCommand('copy')" value="$4" readonly >
      </li>
    </ul>
    Please do not hesitate to contact us at $8, if you have any questions.
    <br><br>
    Thank you for registering and becoming a part of $6!.

  """


  registrationMsg* = minifyHtml"""

    <h3>Hello $1 </h3>
    <br><br>
    We are looking forward to see you at $3!
    We have sent you an activation email with your password.
    You just need to click on the link to become a part of $3.
    <br><br>
    Please do not hesitate to contact us at $5, if you have any questions.
    <br><br>
    Thank you for registering and becoming a part of $2!.

  """


  pluginHtmlListItem* = minifyHtml"""

    <li data-plugin="$1" class="pluginSettings $6" data-enabled="$2">
      <div class="name"> <a href="$3"><b>$4</b> <i>($5)</i></a> </div>
      <div class="enablePlugin"  title="Turn ON">  Start </div>
      <div class="disablePlugin" title="Turn OFF"> Stop  </div>
    </li>

  """
