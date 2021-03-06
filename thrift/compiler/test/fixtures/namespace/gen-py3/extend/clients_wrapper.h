/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#pragma once
#include <src/gen-cpp2/ExtendTestService.h>
#include <gen-py3/hsmodule/clients_wrapper.h>

#include <folly/Try.h>
#include <folly/Unit.h>
#include <folly/io/async/EventBase.h>

#include <Python.h>

#include <cstdint>
#include <functional>
#include <map>
#include <memory>
#include <set>
#include <vector>

namespace cpp2 {

class ExtendTestServiceClientWrapper : virtual public cpp2::HsTestServiceClientWrapper {
  protected:
    std::shared_ptr<cpp2::ExtendTestServiceAsyncClient> async_client;
  public:
    explicit ExtendTestServiceClientWrapper(
      std::shared_ptr<cpp2::ExtendTestServiceAsyncClient> async_client,
      std::shared_ptr<folly::EventBase> event_base);
    void check(
      cpp2::HsFoo arg_struct1,
      std::function<void(PyObject*, folly::Try<bool>)> callback,
      PyObject* py_future);
};


} // namespace cpp2
