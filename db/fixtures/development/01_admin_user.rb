AdminUser.seed(
  :id,
  { id: 1,
    username: 'admin1',
    password_digest: BCrypt::Password.create('password')
  }
)
