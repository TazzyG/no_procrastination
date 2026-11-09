require "securerandom" # <--- DO NOT MISS THIS LINE

Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self, :https
    policy.font_src    :self, :https, :data
    policy.img_src     :self, :https, :data
    policy.object_src  :none

    # Dynamically allow unsafe_eval in development, keep it strict in production
    if Rails.env.development?
      policy.script_src  :self, :https, :unsafe_inline, :unsafe_eval
    else
      policy.script_src  :self, :https, :unsafe_inline
    end

    policy.style_src   :self, :https, :unsafe_inline
  end
#
#   # Generate session nonces for permitted importmap, inline scripts, and inline styles.
  config.content_security_policy_nonce_generator = ->(request) { request.session.id.to_s }
    # config.content_security_policy_nonce_generator = ->(request) { SecureRandom.base64(16) }
#   config.content_security_policy_nonce_directives = %w(script-src style-src)
    # config.content_security_policy_nonce_directives = %w(script-src style-src)
    config.content_security_policy_nonce_directives = %w(script-src)
#
#   # Automatically add `nonce` to `javascript_tag`, `javascript_include_tag`, and `stylesheet_link_tag`
#   # if the corresponding directives are specified in `content_security_policy_nonce_directives`.
    config.content_security_policy_nonce_auto = true
#
#   # Report violations without enforcing the policy.
#   # config.content_security_policy_report_only = true
end
