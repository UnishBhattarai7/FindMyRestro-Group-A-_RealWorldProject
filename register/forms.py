from django import forms
from register.models import Register

class RegisterForm(forms.ModelForm) :
    class meta:
        model = Register

        feilds = "_all_"