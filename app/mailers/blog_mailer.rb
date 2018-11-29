class BlogMailer < ApplicationMailer
  def blog_mail(blog)
    @blog = blog

    mail to: "midoriiiiii9866@gmail.com", subject: "お問い合わせの確認メール"
  end
end
