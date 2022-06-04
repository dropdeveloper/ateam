class APIResponse<T> {
  Status? status;
  T? data;
  String? errorMessage;

  APIResponse.loading(message) : status = Status.loading;
  APIResponse.completed(data) : status = Status.completed;
  APIResponse.error(message) : status = Status.error;

  @override
  String toString() {
    return "Status : $status \n Message : $errorMessage \n Data : $data";
  }
}

enum Status { loading, completed, error }
