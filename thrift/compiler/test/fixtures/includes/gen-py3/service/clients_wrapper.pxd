#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from cpython.ref cimport PyObject
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp cimport bool as cbool
from libcpp.map cimport map as cmap, pair as cpair
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.set cimport set as cset
from libcpp.string cimport string
from libcpp.vector cimport vector

from thrift.py3.client cimport cTClientBase
from thrift.py3.folly cimport cFollyEventBase, cFollyTry, cFollyUnit

cimport service.types

cimport module.types
cimport includes.types

cdef extern from "src/gen-cpp2/MyService.h" namespace "cpp2":
  cdef cppclass cMyServiceAsyncClient "cpp2::MyServiceAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cMyServiceClientWrapper] move(unique_ptr[cMyServiceClientWrapper])

cdef extern from "src/gen-py3/service/clients_wrapper.h" namespace "cpp2":
  cdef cppclass cMyServiceClientWrapper "cpp2::MyServiceClientWrapper":
    cMyServiceClientWrapper(
      shared_ptr[cMyServiceAsyncClient] async_client,
      shared_ptr[cFollyEventBase] event_base)
    void query(
      module.types.cMyStruct arg_s,
      includes.types.cIncluded arg_i,
      void (*callback) (PyObject*, cFollyTry[cFollyUnit]),
      object py_future)

