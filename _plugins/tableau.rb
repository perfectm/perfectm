class TableauPublic < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
  end

  def render(context)
    # Write the output HTML string
    output =  "<div style=\"margin: 0 auto; padding: .8em 0;\"><script async "
    output += "src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\">"
    output += "</script><ins class=\"adsbygoogle\" style=\"display:block\" data-ad-client=\"xxxxx\""
    output += "data-ad-slot=\"yyyyyy\" data-ad-format=\"auto\"></ins><script>(adsbygoogle ="
    output += "window.adsbygoogle || []).push({});</script></div>"


    output = "<div class='tableauPlaceholder' id='viz1517771272408' style='position: relative'><noscript>"
    output += "<a href='#'><img alt='S&amp;P 500 Lows of the year '"
    output += " src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ma&#47;Marketlows&#47;SP500Lowsoftheyear&#47;1_rss.png' style='border: none' />"
    output += "</a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' "
    output += "value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> "
    output += "<param name='site_root' value='' /><param name='name' value='Marketlows&#47;SP500Lowsoftheyear' />"
    output += "<param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' "
    output += "value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ma&#47;Marketlows&#47;SP500Lowsoftheyear&#47;1.png' />"
    output += " <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' />"
    output += "<param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' />"
    output += "<param name='filter' value='publish=yes' /></object></div> <script type='text/javascript'> "
    output += " var divElement = document.getElementById('viz1517771272408');  var vizElement = divElement.getElementsByTagName('object')[0];  "
    output += "  vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';   "
    output += "   var scriptElement = document.createElement('script');  scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js'; "
    output += "   vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>"






    # Render it on the page by returning it
    return output;
  end
end
Liquid::Template.register_tag('tabEmbed', TableauPublic)
