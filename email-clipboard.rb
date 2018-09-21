require 'clipboard'

def email_to_copy
  "#{mailbox}+#{Time.now.to_i}@#{domain}"
end

def mailbox
  email.split('@').first
end

def domain
  email.split('@').last
end

def email
  ENV.fetch('EMAIL_CLIPBOARD_ADDRESS', '')
end

Clipboard.copy(email_to_copy)
