package expo.modules.kotlin.defaultmodules.uuid

import expo.modules.kotlin.exception.CodedException

internal class InvalidNamespaceException(namespace: String) :
  CodedException("Namespace: `$namespace` is not a valid namespace. Namespace should be a valid UUID string")
