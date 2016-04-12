ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = {
    address:        "smtp.gmail.com",
    port:           587,
    domain:         "gmail.com",
    authentication: "plain",
    user_name:      "polito.alumni",
    password:       ENV["PROD_EMAIL_PASSWORD"],
    enable_starttls_auto: true
}
