# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_list = @emails.split(' ').uniq
    with_commas = email_list.detect {|email| email.include?(',')}
    with_out_commas = email_list.select {|email| email.include?(',')== false}

    with_commas.each do |email|
      email.split(',').delete(',').join
    end
    end
  end

end
