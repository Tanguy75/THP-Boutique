def create #pour créer une image de profil
    @user = User.find(params[:user_id]) # permet d'identifier l'utilisateur concerné.
    @user.profile_picture.attach(params[:profile_picture]) # attribuons l'avatar dont la référence est contenue dans params[:profile_picture]
    redirect_to(user_path(@user)) # Une fois cette association faite, on redirige vers la page show de cet utilisateur en suivant la route dynamique
  end
