from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserManager
from django.utils.translation import gettext as _

from core import models


class UserAdmin(BaseUserManager):
    ordering = ['id']
    list_display = ['email', 'name']
    # Sets additional data for the user
    fieldsets = (
        # (<Section_name>, kwargs)
        (None, {'fields': ('email', 'password')}),
        (_('Personal info'), {'fields': ('name',)}),
        (
            _('Permissions'),
            {
                'fields': ('is_active', 'is_staff', 'is_superuser')
            }
        ),
        (_('Important dates'), {'fields': ('last_login',)}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide', ),
            'fields': ('email', 'password1', 'password2')
        }),
    )


admin.site.register(models.User, UserAdmin)
admin.site.register(models.Tag)
admin.site.register(models.Ingredient)
