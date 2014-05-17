part of storage_v1_api;

class BucketAccessControlsResource_ {

  final Client _client;

  BucketAccessControlsResource_(Client client) :
      _client = client;

  /**
   * Permanently deletes the ACL entry for the specified entity on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String bucket, core.String entity, {core.Map optParams}) {
    var url = "b/{bucket}/acl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns the ACL entry for the specified entity on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BucketAccessControl> get(core.String bucket, core.String entity, {core.Map optParams}) {
    var url = "b/{bucket}/acl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BucketAccessControl.fromJson(data));
  }

  /**
   * Creates a new ACL entry on the specified bucket.
   *
   * [request] - BucketAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BucketAccessControl> insert(BucketAccessControl request, core.String bucket, {core.Map optParams}) {
    var url = "b/{bucket}/acl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BucketAccessControl.fromJson(data));
  }

  /**
   * Retrieves ACL entries on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BucketAccessControls> list(core.String bucket, {core.Map optParams}) {
    var url = "b/{bucket}/acl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BucketAccessControls.fromJson(data));
  }

  /**
   * Updates an ACL entry on the specified bucket. This method supports patch semantics.
   *
   * [request] - BucketAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BucketAccessControl> patch(BucketAccessControl request, core.String bucket, core.String entity, {core.Map optParams}) {
    var url = "b/{bucket}/acl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BucketAccessControl.fromJson(data));
  }

  /**
   * Updates an ACL entry on the specified bucket.
   *
   * [request] - BucketAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BucketAccessControl> update(BucketAccessControl request, core.String bucket, core.String entity, {core.Map optParams}) {
    var url = "b/{bucket}/acl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BucketAccessControl.fromJson(data));
  }
}

class BucketsResource_ {

  final Client _client;

  BucketsResource_(Client client) :
      _client = client;

  /**
   * Permanently deletes an empty bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [ifMetagenerationMatch] - If set, only deletes the bucket if its metageneration matches this value.
   *
   * [ifMetagenerationNotMatch] - If set, only deletes the bucket if its metageneration does not match this value.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String bucket, {core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.Map optParams}) {
    var url = "b/{bucket}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns metadata for the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [ifMetagenerationMatch] - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
   *
   * [projection] - Set of properties to return. Defaults to noAcl.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Bucket> get(core.String bucket, {core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.String projection, core.Map optParams}) {
    var url = "b/{bucket}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Bucket.fromJson(data));
  }

  /**
   * Creates a new bucket.
   *
   * [request] - Bucket to send in this request
   *
   * [project] - A valid API project identifier.
   *
   * [predefinedAcl] - Apply a predefined set of access controls to this bucket.
   *   Allowed values:
   *     authenticatedRead - Project team owners get OWNER access, and allAuthenticatedUsers get READER access.
   *     private - Project team owners get OWNER access.
   *     projectPrivate - Project team members get access according to their roles.
   *     publicRead - Project team owners get OWNER access, and allUsers get READER access.
   *     publicReadWrite - Project team owners get OWNER access, and allUsers get WRITER access.
   *
   * [projection] - Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Bucket> insert(Bucket request, core.String project, {core.String predefinedAcl, core.String projection, core.Map optParams}) {
    var url = "b";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (predefinedAcl != null && !["authenticatedRead", "private", "projectPrivate", "publicRead", "publicReadWrite"].contains(predefinedAcl)) {
      paramErrors.add("Allowed values for predefinedAcl: authenticatedRead, private, projectPrivate, publicRead, publicReadWrite");
    }
    if (predefinedAcl != null) queryParams["predefinedAcl"] = predefinedAcl;
    if (project == null) paramErrors.add("project is required");
    if (project != null) queryParams["project"] = project;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Bucket.fromJson(data));
  }

  /**
   * Retrieves a list of buckets for a given project.
   *
   * [project] - A valid API project identifier.
   *
   * [maxResults] - Maximum number of buckets to return.
   *   Minimum: 0
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [projection] - Set of properties to return. Defaults to noAcl.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Buckets> list(core.String project, {core.int maxResults, core.String pageToken, core.String projection, core.Map optParams}) {
    var url = "b";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) queryParams["project"] = project;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Buckets.fromJson(data));
  }

  /**
   * Updates a bucket. This method supports patch semantics.
   *
   * [request] - Bucket to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [ifMetagenerationMatch] - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
   *
   * [predefinedAcl] - Apply a predefined set of access controls to this bucket.
   *   Allowed values:
   *     authenticatedRead - Project team owners get OWNER access, and allAuthenticatedUsers get READER access.
   *     private - Project team owners get OWNER access.
   *     projectPrivate - Project team members get access according to their roles.
   *     publicRead - Project team owners get OWNER access, and allUsers get READER access.
   *     publicReadWrite - Project team owners get OWNER access, and allUsers get WRITER access.
   *
   * [projection] - Set of properties to return. Defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Bucket> patch(Bucket request, core.String bucket, {core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.String predefinedAcl, core.String projection, core.Map optParams}) {
    var url = "b/{bucket}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (predefinedAcl != null && !["authenticatedRead", "private", "projectPrivate", "publicRead", "publicReadWrite"].contains(predefinedAcl)) {
      paramErrors.add("Allowed values for predefinedAcl: authenticatedRead, private, projectPrivate, publicRead, publicReadWrite");
    }
    if (predefinedAcl != null) queryParams["predefinedAcl"] = predefinedAcl;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Bucket.fromJson(data));
  }

  /**
   * Updates a bucket.
   *
   * [request] - Bucket to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [ifMetagenerationMatch] - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
   *
   * [predefinedAcl] - Apply a predefined set of access controls to this bucket.
   *   Allowed values:
   *     authenticatedRead - Project team owners get OWNER access, and allAuthenticatedUsers get READER access.
   *     private - Project team owners get OWNER access.
   *     projectPrivate - Project team members get access according to their roles.
   *     publicRead - Project team owners get OWNER access, and allUsers get READER access.
   *     publicReadWrite - Project team owners get OWNER access, and allUsers get WRITER access.
   *
   * [projection] - Set of properties to return. Defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Bucket> update(Bucket request, core.String bucket, {core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.String predefinedAcl, core.String projection, core.Map optParams}) {
    var url = "b/{bucket}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (predefinedAcl != null && !["authenticatedRead", "private", "projectPrivate", "publicRead", "publicReadWrite"].contains(predefinedAcl)) {
      paramErrors.add("Allowed values for predefinedAcl: authenticatedRead, private, projectPrivate, publicRead, publicReadWrite");
    }
    if (predefinedAcl != null) queryParams["predefinedAcl"] = predefinedAcl;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Bucket.fromJson(data));
  }
}

class ChannelsResource_ {

  final Client _client;

  ChannelsResource_(Client client) :
      _client = client;

  /**
   * Stop watching resources through this channel
   *
   * [request] - Channel to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> stop(Channel request, {core.Map optParams}) {
    var url = "channels/stop";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class DefaultObjectAccessControlsResource_ {

  final Client _client;

  DefaultObjectAccessControlsResource_(Client client) :
      _client = client;

  /**
   * Permanently deletes the default object ACL entry for the specified entity on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String bucket, core.String entity, {core.Map optParams}) {
    var url = "b/{bucket}/defaultObjectAcl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns the default object ACL entry for the specified entity on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControl> get(core.String bucket, core.String entity, {core.Map optParams}) {
    var url = "b/{bucket}/defaultObjectAcl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControl.fromJson(data));
  }

  /**
   * Creates a new default object ACL entry on the specified bucket.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControl> insert(ObjectAccessControl request, core.String bucket, {core.Map optParams}) {
    var url = "b/{bucket}/defaultObjectAcl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControl.fromJson(data));
  }

  /**
   * Retrieves default object ACL entries on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [ifMetagenerationMatch] - If present, only return default ACL listing if the bucket's current metageneration matches this value.
   *
   * [ifMetagenerationNotMatch] - If present, only return default ACL listing if the bucket's current metageneration does not match the given value.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControls> list(core.String bucket, {core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.Map optParams}) {
    var url = "b/{bucket}/defaultObjectAcl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControls.fromJson(data));
  }

  /**
   * Updates a default object ACL entry on the specified bucket. This method supports patch semantics.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControl> patch(ObjectAccessControl request, core.String bucket, core.String entity, {core.Map optParams}) {
    var url = "b/{bucket}/defaultObjectAcl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControl.fromJson(data));
  }

  /**
   * Updates a default object ACL entry on the specified bucket.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControl> update(ObjectAccessControl request, core.String bucket, core.String entity, {core.Map optParams}) {
    var url = "b/{bucket}/defaultObjectAcl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControl.fromJson(data));
  }
}

class ObjectAccessControlsResource_ {

  final Client _client;

  ObjectAccessControlsResource_(Client client) :
      _client = client;

  /**
   * Permanently deletes the ACL entry for the specified entity on the specified object.
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String bucket, core.String object, core.String entity, {core.int generation, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}/acl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (generation != null) queryParams["generation"] = generation;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns the ACL entry for the specified entity on the specified object.
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControl> get(core.String bucket, core.String object, core.String entity, {core.int generation, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}/acl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (generation != null) queryParams["generation"] = generation;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControl.fromJson(data));
  }

  /**
   * Creates a new ACL entry on the specified object.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControl> insert(ObjectAccessControl request, core.String bucket, core.String object, {core.int generation, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}/acl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (generation != null) queryParams["generation"] = generation;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControl.fromJson(data));
  }

  /**
   * Retrieves ACL entries on the specified object.
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControls> list(core.String bucket, core.String object, {core.int generation, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}/acl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (generation != null) queryParams["generation"] = generation;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControls.fromJson(data));
  }

  /**
   * Updates an ACL entry on the specified object. This method supports patch semantics.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControl> patch(ObjectAccessControl request, core.String bucket, core.String object, core.String entity, {core.int generation, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}/acl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (generation != null) queryParams["generation"] = generation;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControl.fromJson(data));
  }

  /**
   * Updates an ACL entry on the specified object.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [entity] - The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ObjectAccessControl> update(ObjectAccessControl request, core.String bucket, core.String object, core.String entity, {core.int generation, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}/acl/{entity}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (generation != null) queryParams["generation"] = generation;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ObjectAccessControl.fromJson(data));
  }
}

class ObjectsResource_ {

  final Client _client;

  ObjectsResource_(Client client) :
      _client = client;

  /**
   * Concatenates a list of existing objects into a new object in the same bucket.
   *
   * [request] - ComposeRequest to send in this request
   *
   * [destinationBucket] - Name of the bucket in which to store the new object.
   *
   * [destinationObject] - Name of the new object.
   *
   * [destinationPredefinedAcl] - Apply a predefined set of access controls to the destination object.
   *   Allowed values:
   *     authenticatedRead - Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
   *     bucketOwnerFullControl - Object owner gets OWNER access, and project team owners get OWNER access.
   *     bucketOwnerRead - Object owner gets OWNER access, and project team owners get READER access.
   *     private - Object owner gets OWNER access.
   *     projectPrivate - Object owner gets OWNER access, and project team members get access according to their roles.
   *     publicRead - Object owner gets OWNER access, and allUsers get READER access.
   *
   * [ifGenerationMatch] - Makes the operation conditional on whether the object's current generation matches the given value.
   *
   * [ifMetagenerationMatch] - Makes the operation conditional on whether the object's current metageneration matches the given value.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Object> compose(ComposeRequest request, core.String destinationBucket, core.String destinationObject, {core.String destinationPredefinedAcl, core.int ifGenerationMatch, core.int ifMetagenerationMatch, core.Map optParams}) {
    var url = "b/{destinationBucket}/o/{destinationObject}/compose";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (destinationBucket == null) paramErrors.add("destinationBucket is required");
    if (destinationBucket != null) urlParams["destinationBucket"] = destinationBucket;
    if (destinationObject == null) paramErrors.add("destinationObject is required");
    if (destinationObject != null) urlParams["destinationObject"] = destinationObject;
    if (destinationPredefinedAcl != null && !["authenticatedRead", "bucketOwnerFullControl", "bucketOwnerRead", "private", "projectPrivate", "publicRead"].contains(destinationPredefinedAcl)) {
      paramErrors.add("Allowed values for destinationPredefinedAcl: authenticatedRead, bucketOwnerFullControl, bucketOwnerRead, private, projectPrivate, publicRead");
    }
    if (destinationPredefinedAcl != null) queryParams["destinationPredefinedAcl"] = destinationPredefinedAcl;
    if (ifGenerationMatch != null) queryParams["ifGenerationMatch"] = ifGenerationMatch;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Object.fromJson(data));
  }

  /**
   * Copies an object to a specified location. Optionally overrides metadata.
   *
   * [request] - Object to send in this request
   *
   * [sourceBucket] - Name of the bucket in which to find the source object.
   *
   * [sourceObject] - Name of the source object.
   *
   * [destinationBucket] - Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.
   *
   * [destinationObject] - Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any.
   *
   * [destinationPredefinedAcl] - Apply a predefined set of access controls to the destination object.
   *   Allowed values:
   *     authenticatedRead - Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
   *     bucketOwnerFullControl - Object owner gets OWNER access, and project team owners get OWNER access.
   *     bucketOwnerRead - Object owner gets OWNER access, and project team owners get READER access.
   *     private - Object owner gets OWNER access.
   *     projectPrivate - Object owner gets OWNER access, and project team members get access according to their roles.
   *     publicRead - Object owner gets OWNER access, and allUsers get READER access.
   *
   * [ifGenerationMatch] - Makes the operation conditional on whether the destination object's current generation matches the given value.
   *
   * [ifGenerationNotMatch] - Makes the operation conditional on whether the destination object's current generation does not match the given value.
   *
   * [ifMetagenerationMatch] - Makes the operation conditional on whether the destination object's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the operation conditional on whether the destination object's current metageneration does not match the given value.
   *
   * [ifSourceGenerationMatch] - Makes the operation conditional on whether the source object's generation matches the given value.
   *
   * [ifSourceGenerationNotMatch] - Makes the operation conditional on whether the source object's generation does not match the given value.
   *
   * [ifSourceMetagenerationMatch] - Makes the operation conditional on whether the source object's current metageneration matches the given value.
   *
   * [ifSourceMetagenerationNotMatch] - Makes the operation conditional on whether the source object's current metageneration does not match the given value.
   *
   * [projection] - Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit the acl property.
   *
   * [sourceGeneration] - If present, selects a specific revision of the source object (as opposed to the latest version, the default).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Object> copy(Object request, core.String sourceBucket, core.String sourceObject, core.String destinationBucket, core.String destinationObject, {core.String destinationPredefinedAcl, core.int ifGenerationMatch, core.int ifGenerationNotMatch, core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.int ifSourceGenerationMatch, core.int ifSourceGenerationNotMatch, core.int ifSourceMetagenerationMatch, core.int ifSourceMetagenerationNotMatch, core.String projection, core.int sourceGeneration, core.Map optParams}) {
    var url = "b/{sourceBucket}/o/{sourceObject}/copyTo/b/{destinationBucket}/o/{destinationObject}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (destinationBucket == null) paramErrors.add("destinationBucket is required");
    if (destinationBucket != null) urlParams["destinationBucket"] = destinationBucket;
    if (destinationObject == null) paramErrors.add("destinationObject is required");
    if (destinationObject != null) urlParams["destinationObject"] = destinationObject;
    if (destinationPredefinedAcl != null && !["authenticatedRead", "bucketOwnerFullControl", "bucketOwnerRead", "private", "projectPrivate", "publicRead"].contains(destinationPredefinedAcl)) {
      paramErrors.add("Allowed values for destinationPredefinedAcl: authenticatedRead, bucketOwnerFullControl, bucketOwnerRead, private, projectPrivate, publicRead");
    }
    if (destinationPredefinedAcl != null) queryParams["destinationPredefinedAcl"] = destinationPredefinedAcl;
    if (ifGenerationMatch != null) queryParams["ifGenerationMatch"] = ifGenerationMatch;
    if (ifGenerationNotMatch != null) queryParams["ifGenerationNotMatch"] = ifGenerationNotMatch;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (ifSourceGenerationMatch != null) queryParams["ifSourceGenerationMatch"] = ifSourceGenerationMatch;
    if (ifSourceGenerationNotMatch != null) queryParams["ifSourceGenerationNotMatch"] = ifSourceGenerationNotMatch;
    if (ifSourceMetagenerationMatch != null) queryParams["ifSourceMetagenerationMatch"] = ifSourceMetagenerationMatch;
    if (ifSourceMetagenerationNotMatch != null) queryParams["ifSourceMetagenerationNotMatch"] = ifSourceMetagenerationNotMatch;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (sourceBucket == null) paramErrors.add("sourceBucket is required");
    if (sourceBucket != null) urlParams["sourceBucket"] = sourceBucket;
    if (sourceGeneration != null) queryParams["sourceGeneration"] = sourceGeneration;
    if (sourceObject == null) paramErrors.add("sourceObject is required");
    if (sourceObject != null) urlParams["sourceObject"] = sourceObject;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Object.fromJson(data));
  }

  /**
   * Deletes an object and its metadata. Deletions are permanent if versioning is not enabled for the bucket, or if the generation parameter is used.
   *
   * [bucket] - Name of the bucket in which the object resides.
   *
   * [object] - Name of the object.
   *
   * [generation] - If present, permanently deletes a specific revision of this object (as opposed to the latest version, the default).
   *
   * [ifGenerationMatch] - Makes the operation conditional on whether the object's current generation matches the given value.
   *
   * [ifGenerationNotMatch] - Makes the operation conditional on whether the object's current generation does not match the given value.
   *
   * [ifMetagenerationMatch] - Makes the operation conditional on whether the object's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the operation conditional on whether the object's current metageneration does not match the given value.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String bucket, core.String object, {core.int generation, core.int ifGenerationMatch, core.int ifGenerationNotMatch, core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (generation != null) queryParams["generation"] = generation;
    if (ifGenerationMatch != null) queryParams["ifGenerationMatch"] = ifGenerationMatch;
    if (ifGenerationNotMatch != null) queryParams["ifGenerationNotMatch"] = ifGenerationNotMatch;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves objects or their metadata.
   *
   * [bucket] - Name of the bucket in which the object resides.
   *
   * [object] - Name of the object.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [ifGenerationMatch] - Makes the operation conditional on whether the object's generation matches the given value.
   *
   * [ifGenerationNotMatch] - Makes the operation conditional on whether the object's generation does not match the given value.
   *
   * [ifMetagenerationMatch] - Makes the operation conditional on whether the object's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the operation conditional on whether the object's current metageneration does not match the given value.
   *
   * [projection] - Set of properties to return. Defaults to noAcl.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Object> get(core.String bucket, core.String object, {core.int generation, core.int ifGenerationMatch, core.int ifGenerationNotMatch, core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.String projection, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (generation != null) queryParams["generation"] = generation;
    if (ifGenerationMatch != null) queryParams["ifGenerationMatch"] = ifGenerationMatch;
    if (ifGenerationNotMatch != null) queryParams["ifGenerationNotMatch"] = ifGenerationNotMatch;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Object.fromJson(data));
  }

  /**
   * Stores a new object and metadata.
   *
   * [request] - Object to send in this request
   *
   * [bucket] - Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [contentEncoding] - If set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded.
   *
   * [ifGenerationMatch] - Makes the operation conditional on whether the object's current generation matches the given value.
   *
   * [ifGenerationNotMatch] - Makes the operation conditional on whether the object's current generation does not match the given value.
   *
   * [ifMetagenerationMatch] - Makes the operation conditional on whether the object's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the operation conditional on whether the object's current metageneration does not match the given value.
   *
   * [name] - Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any.
   *
   * [predefinedAcl] - Apply a predefined set of access controls to this object.
   *   Allowed values:
   *     authenticatedRead - Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
   *     bucketOwnerFullControl - Object owner gets OWNER access, and project team owners get OWNER access.
   *     bucketOwnerRead - Object owner gets OWNER access, and project team owners get READER access.
   *     private - Object owner gets OWNER access.
   *     projectPrivate - Object owner gets OWNER access, and project team members get access according to their roles.
   *     publicRead - Object owner gets OWNER access, and allUsers get READER access.
   *
   * [projection] - Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Object> insert(Object request, core.String bucket, {core.String content, core.String contentType, core.String contentEncoding, core.int ifGenerationMatch, core.int ifGenerationNotMatch, core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.String name, core.String predefinedAcl, core.String projection, core.Map optParams}) {
    var url = "b/{bucket}/o";
    var uploadUrl = "/upload/storage/v1/b/{bucket}/o";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (contentEncoding != null) queryParams["contentEncoding"] = contentEncoding;
    if (ifGenerationMatch != null) queryParams["ifGenerationMatch"] = ifGenerationMatch;
    if (ifGenerationNotMatch != null) queryParams["ifGenerationNotMatch"] = ifGenerationNotMatch;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (name != null) queryParams["name"] = name;
    if (predefinedAcl != null && !["authenticatedRead", "bucketOwnerFullControl", "bucketOwnerRead", "private", "projectPrivate", "publicRead"].contains(predefinedAcl)) {
      paramErrors.add("Allowed values for predefinedAcl: authenticatedRead, bucketOwnerFullControl, bucketOwnerRead, private, projectPrivate, publicRead");
    }
    if (predefinedAcl != null) queryParams["predefinedAcl"] = predefinedAcl;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Object.fromJson(data));
  }

  /**
   * Retrieves a list of objects matching the criteria.
   *
   * [bucket] - Name of the bucket in which to look for objects.
   *
   * [delimiter] - Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
   *
   * [maxResults] - Maximum number of items plus prefixes to return. As duplicate prefixes are omitted, fewer total results may be returned than requested.
   *   Minimum: 0
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [prefix] - Filter results to objects whose names begin with this prefix.
   *
   * [projection] - Set of properties to return. Defaults to noAcl.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit the acl property.
   *
   * [versions] - If true, lists all versions of a file as distinct results.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Objects> list(core.String bucket, {core.String delimiter, core.int maxResults, core.String pageToken, core.String prefix, core.String projection, core.bool versions, core.Map optParams}) {
    var url = "b/{bucket}/o";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (delimiter != null) queryParams["delimiter"] = delimiter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (prefix != null) queryParams["prefix"] = prefix;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (versions != null) queryParams["versions"] = versions;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Objects.fromJson(data));
  }

  /**
   * Updates an object's metadata. This method supports patch semantics.
   *
   * [request] - Object to send in this request
   *
   * [bucket] - Name of the bucket in which the object resides.
   *
   * [object] - Name of the object.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [ifGenerationMatch] - Makes the operation conditional on whether the object's current generation matches the given value.
   *
   * [ifGenerationNotMatch] - Makes the operation conditional on whether the object's current generation does not match the given value.
   *
   * [ifMetagenerationMatch] - Makes the operation conditional on whether the object's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the operation conditional on whether the object's current metageneration does not match the given value.
   *
   * [predefinedAcl] - Apply a predefined set of access controls to this object.
   *   Allowed values:
   *     authenticatedRead - Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
   *     bucketOwnerFullControl - Object owner gets OWNER access, and project team owners get OWNER access.
   *     bucketOwnerRead - Object owner gets OWNER access, and project team owners get READER access.
   *     private - Object owner gets OWNER access.
   *     projectPrivate - Object owner gets OWNER access, and project team members get access according to their roles.
   *     publicRead - Object owner gets OWNER access, and allUsers get READER access.
   *
   * [projection] - Set of properties to return. Defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Object> patch(Object request, core.String bucket, core.String object, {core.int generation, core.int ifGenerationMatch, core.int ifGenerationNotMatch, core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.String predefinedAcl, core.String projection, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (generation != null) queryParams["generation"] = generation;
    if (ifGenerationMatch != null) queryParams["ifGenerationMatch"] = ifGenerationMatch;
    if (ifGenerationNotMatch != null) queryParams["ifGenerationNotMatch"] = ifGenerationNotMatch;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (predefinedAcl != null && !["authenticatedRead", "bucketOwnerFullControl", "bucketOwnerRead", "private", "projectPrivate", "publicRead"].contains(predefinedAcl)) {
      paramErrors.add("Allowed values for predefinedAcl: authenticatedRead, bucketOwnerFullControl, bucketOwnerRead, private, projectPrivate, publicRead");
    }
    if (predefinedAcl != null) queryParams["predefinedAcl"] = predefinedAcl;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Object.fromJson(data));
  }

  /**
   * Updates an object's metadata.
   *
   * [request] - Object to send in this request
   *
   * [bucket] - Name of the bucket in which the object resides.
   *
   * [object] - Name of the object.
   *
   * [generation] - If present, selects a specific revision of this object (as opposed to the latest version, the default).
   *
   * [ifGenerationMatch] - Makes the operation conditional on whether the object's current generation matches the given value.
   *
   * [ifGenerationNotMatch] - Makes the operation conditional on whether the object's current generation does not match the given value.
   *
   * [ifMetagenerationMatch] - Makes the operation conditional on whether the object's current metageneration matches the given value.
   *
   * [ifMetagenerationNotMatch] - Makes the operation conditional on whether the object's current metageneration does not match the given value.
   *
   * [predefinedAcl] - Apply a predefined set of access controls to this object.
   *   Allowed values:
   *     authenticatedRead - Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
   *     bucketOwnerFullControl - Object owner gets OWNER access, and project team owners get OWNER access.
   *     bucketOwnerRead - Object owner gets OWNER access, and project team owners get READER access.
   *     private - Object owner gets OWNER access.
   *     projectPrivate - Object owner gets OWNER access, and project team members get access according to their roles.
   *     publicRead - Object owner gets OWNER access, and allUsers get READER access.
   *
   * [projection] - Set of properties to return. Defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Object> update(Object request, core.String bucket, core.String object, {core.int generation, core.int ifGenerationMatch, core.int ifGenerationNotMatch, core.int ifMetagenerationMatch, core.int ifMetagenerationNotMatch, core.String predefinedAcl, core.String projection, core.Map optParams}) {
    var url = "b/{bucket}/o/{object}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (generation != null) queryParams["generation"] = generation;
    if (ifGenerationMatch != null) queryParams["ifGenerationMatch"] = ifGenerationMatch;
    if (ifGenerationNotMatch != null) queryParams["ifGenerationNotMatch"] = ifGenerationNotMatch;
    if (ifMetagenerationMatch != null) queryParams["ifMetagenerationMatch"] = ifMetagenerationMatch;
    if (ifMetagenerationNotMatch != null) queryParams["ifMetagenerationNotMatch"] = ifMetagenerationNotMatch;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (predefinedAcl != null && !["authenticatedRead", "bucketOwnerFullControl", "bucketOwnerRead", "private", "projectPrivate", "publicRead"].contains(predefinedAcl)) {
      paramErrors.add("Allowed values for predefinedAcl: authenticatedRead, bucketOwnerFullControl, bucketOwnerRead, private, projectPrivate, publicRead");
    }
    if (predefinedAcl != null) queryParams["predefinedAcl"] = predefinedAcl;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Object.fromJson(data));
  }

  /**
   * Watch for changes on all objects in a bucket.
   *
   * [request] - Channel to send in this request
   *
   * [bucket] - Name of the bucket in which to look for objects.
   *
   * [delimiter] - Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
   *
   * [maxResults] - Maximum number of items plus prefixes to return. As duplicate prefixes are omitted, fewer total results may be returned than requested.
   *   Minimum: 0
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [prefix] - Filter results to objects whose names begin with this prefix.
   *
   * [projection] - Set of properties to return. Defaults to noAcl.
   *   Allowed values:
   *     full - Include all properties.
   *     noAcl - Omit the acl property.
   *
   * [versions] - If true, lists all versions of a file as distinct results.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Channel> watchAll(Channel request, core.String bucket, {core.String delimiter, core.int maxResults, core.String pageToken, core.String prefix, core.String projection, core.bool versions, core.Map optParams}) {
    var url = "b/{bucket}/o/watch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (delimiter != null) queryParams["delimiter"] = delimiter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (prefix != null) queryParams["prefix"] = prefix;
    if (projection != null && !["full", "noAcl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, noAcl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (versions != null) queryParams["versions"] = versions;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Channel.fromJson(data));
  }
}

