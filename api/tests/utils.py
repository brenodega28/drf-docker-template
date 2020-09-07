from rest_framework.authtoken.models import Token

from core.models.user import User

from model_mommy import mommy


def login_default(client):
    user = User.objects.create_user('test@test.com', 'test1234')
    return login_with(client, user)


def login_with(client, user):
    token = mommy.make(Token, user=user)
    client.credentials(HTTP_AUTHORIZATION='Token ' + token.key)

    return user
