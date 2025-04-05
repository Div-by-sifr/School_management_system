from django.core.exceptions import PermissionDenied
from django.contrib import messages

def is_supervisor(view_func):
    def _wrapped_view(request, *args, **kwargs):
        if not request.user.is_authenticated or not (request.user.is_superuser or request.user.is_staff):
            messages.info(request,'ليس لديك صلاحية للوصول')
            raise PermissionDenied("ليس لديك صلاحية لحذف هذا العنصر.")
        return view_func(request, *args, **kwargs)
    return _wrapped_view
