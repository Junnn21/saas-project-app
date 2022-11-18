Milia.setup do |config|
   # whitelist tenant params list
  # allows an app to expand the permitted attribute list
  # specify each attribute as a symbol
  # example: [:name]
  config.whitelist_tenant_params = [:plan, :token]

  # whitelist coupon params list
  # allows an app to expand the permitted attribute list
  # specify each attribute as a symbol
  # example: [:coupon]
  config.whitelist_coupon_params = [:vendor]
  config.use_coupon = false
  config.use_recaptcha = false
end