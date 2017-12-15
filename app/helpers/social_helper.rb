module SocialHelper
   def socialImageFromLabel(lbl)
      case lbl
      when 'facebook'
         image_tag 'socials/fb-black.svg'
      when 'twitter'
         image_tag 'socials/twitter-black.svg'
      when 'github'
         image_tag 'socials/github.svg'
      when 'instagram'
         image_tag 'socials/instagram-black.svg'
      when 'linkedin'
         image_tag 'socials/linkedin.svg'
      else
         return ''
      end
   end
end
