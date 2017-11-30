module SocialHelper
   def socialImageFromLabel(lbl)
      case lbl
      when 'facebook'
         image_tag 'socials/fb-black.png'
      when 'twitter'
         image_tag 'socials/twitter-black.png'
      when 'github'
         image_tag 'socials/github.png'
      when 'instagram'
         image_tag 'socials/instagram-black.png'
      when 'linkedin'
         image_tag 'socials/linkedin.png'
      else
         return ''
      end
   end
end
