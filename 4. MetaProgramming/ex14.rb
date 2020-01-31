#Meta Programming : Different type of approach!
class CarModel
  def method_missing(name, *args)
    name = name.to_s
    super unless name =~ /(_info|_price)=?$/
    if name =~ (/=$/)
      instance_variable_set("@{name.chop}",args.first)
    else
      instance_variable_get("@{name.chop}")
    end
  end
end

@car_model = CarModel.new

@car_model.stereo_info = "USB/ MP3 Player"
@car_model.stereo_price = "$32.00"

@car_model.stereo_info





# class CarModel
#   #define a class macro for setting FEATURES
#   def self.features(*args)
#     args.each do |feature|
#       attr_accessor "#{feature}_info", "#{feature}_price"
#     end
#   end
#
#   #set _info and _price methods for each of these feature
#   features :engine, :wheel, :airbag, :alarm, :stereo
# end
#
# class CarModel
#   FEATURES = ["engine", "wheel", "airbag", "alarm", "stereo"]
#
#   FEATURES.each do |feature|
#     define_method("#{feature}_info") do |info|
#       instance_variable_set("@#{feature}_info",info)
#     end
#     define_method("#{feature}_info") do
#       instance_variable_get("@#{feature}_info")
#     end
#
#     define_method("#{feature}_price") do |price|
#       instance_variable_set("@#{feature}_price",price)
#     end
#     define_method("#{feature}_price") do
#       instance_variable_get("@#{feature}_price")
#     end
#   end
# end


# class CarModel
#   def engine_info = (info)
#     @engine_info = info
#   end
#   def engine_info
#     @engine_info
#   end
#
#   def engine_price = (price)
#     @engine_price = price
#   end
#   def engine_price
#     @engine_price
#   end
#
#   def wheel_info = (info)
#     @wheel_info = info
#   end
#   def wheel_info
#     @wheel_info
#   end
#
#   def wheel_price = (price)
#     @wheel_price = price
#   end
#   def wheel_price
#     @wheel_price
#   end
#
#   def airbag_info = (info)
#     @airbag_info = info
#   end
#   def airbag_info
#     @airbag_info
#   end
#
#   def airbag_price = (price)
#     @airbag_price = price
#   end
#   def airbag_price
#     @airbag_price
#   end
#
#   def alarm_info = (info)
#     @alarm_info = info
#   end
#   def alarm_info
#     @alarm_info
#   end
#
#   def alarm_price = (price)
#     @alarm_price = price
#   end
#   def alarm_price
#     @alarm_price
#   end
#
#   def stereo_info = (info)
#     @stereo_info = info
#   end
#   def stereo_info
#     @stereo_info
#   end
#
#   def stereo_price = (price)
#     @stereo_price = price
#   end
#   def stereo_price
#     @stereo_price
#   end
# end
