#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from libcpp.memory cimport shared_ptr


from service.clients_wrapper cimport cMyServiceClientWrapper

cdef class MyService:
    cdef shared_ptr[cMyServiceClientWrapper] _service_MyService_client
    cdef object loop
    cdef object __weakref__

    @staticmethod
    cdef _service_MyService_set_client(MyService inst, shared_ptr[cMyServiceClientWrapper] c_obj)

