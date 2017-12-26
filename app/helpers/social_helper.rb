module SocialHelper
   def socialImageFromLabel(lbl)
      case lbl
      when 'facebook'
         image_tag 'socials/facebook-logo.svg'
      when 'twitter'
         image_tag 'socials/twitter-logo.svg'
      when 'github'
         image_tag 'socials/github-logo.svg'
      when 'instagram'
         image_tag 'socials/instagram-logo.svg'
      when 'linkedin'
         image_tag 'socials/linkedin-logo.svg'
      else
         return ''
      end
   end
end
