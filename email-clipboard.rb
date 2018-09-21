require 'clipboard'
require_relative 'words'

def email_to_copy
  if ARGV.first == '-word'
    return "#{mailbox}+#{word}@#{domain}"
  end

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

def word
  Words.new.words.sample.downcase
end

Clipboard.copy(email_to_copy)
