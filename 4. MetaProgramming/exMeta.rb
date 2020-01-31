class Mimic
  @@mimic_lookup = {}

  def self.mimic(to, from)
    @@mimic_lookup[to] = from
  end

  def method_missing(m, *args, &block)
    if @@mimic_lookup.include?(m.to_sym)
      self.send(@@mimic_lookup[m.to_sym], *args, &block)
    else
      raise ArgumentError.new("Method `#{m}` doesn't exist.")
    end
  end

  def respond_to?(method_name, include_private = false)
    @@mimic_lookup.include?(method_name.to_sym) || super
  end
end

class Alpaca < Mimic
  mimic :saludar, :greet

  def greet
    puts "Hey there"
  end
end

buddy = Alpaca.new
p buddy.respond_to?(:saludar)
buddy.saludar
buddy.welcome
