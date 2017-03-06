module HelloHelper
  def show_user_greeting(name)
    if name == 'Миша'
      'Опять ты!'
    else
      "Мы рады вас видет, о #{name}"
    end
  end
end
