// ErrorReason is the error list of Cloud Control API.
// Error Code Range of Cloud API is 100-200 (0-1000 is reserved by OpenRMS, 0-100 for core and 100-1000 for protocols).

package metadata

errors: "UNSPECIFIED": {
	title: {
		en: "Unspecified is returned when the error is unknown"
		zh: "未知错误"
	}
	meta: {
		code: 500
	}
}

errors: "NOT_UPDATABLE": {
	title: {
		en: "NotUpdatable is returned when the request is trying to update a field that is not updatable"
		zh: "请求尝试更新不可更新的字段时返回"
	}
	meta: {
		code: 400
	}
}

errors: "INVALID_REQUEST": {
	title: {
		en: "InvalidRequest is returned when the request is invalid"
		zh: "请求无效时返回"
	}
	meta: {
		code: 400
	}
}

errors: "ACCESS_DENIED": {
	title: {
		en: "AccessDenied is returned when the request is not authorized"
		zh: "请求未授权时返回"
	}
	meta: {
		code: 403
	}
}

errors: "INVALID_CREDENTIALS": {
	title: {
		en: "InvalidCredentials is returned when the request is not authorized"
		zh: "请求未授权时返回"
	}
	meta: {
		code: 403
	}
}

errors: "ALREADY_EXISTS": {
	title: {
		en: "AlreadyExists is returned when the resource already exists"
		zh: "资源已存在时返回"
	}
	meta: {
		code: 409
	}
}

errors: "NOT_FOUND": {
	title: {
		en: "NotFound is returned when the resource is not found"
		zh: "资源未找到时返回"
	}
	meta: {
		code: 404
	}
}

errors: "RESOURCE_CONFLICT": {
	title: {
		en: "ResourceConflict is returned when the resource is in conflict"
		zh: "资源冲突时返回"
	}
	meta: {
		code: 409
	}
}

errors: "THROTTLING": {
	title: {
		en: "Throttling is returned when the request is throttled"
		zh: "请求被限流时返回"
	}
	meta: {
		code: 429
	}
}

errors: "SERVICE_LIMIT_EXCEEDED": {
	title: {
		en: "ServiceLimitExceeded is returned when the request is reach the service limit"
		zh: "请求达到服务限制时返回"
	}
	meta: {
		code: 429
	}
}

errors: "GENERAL_SERVICE_EXCEPTION": {
	title: {
		en: "NotStabilized is returned when the error is uncategorized"
		zh: "未分类错误时返回"
	}
	meta: {
		code: 500
	}
}

errors: "SERVICE_INTERNAL_ERROR": {
	title: {
		en: "ServiceInternalError is returned when the error is unknown"
		zh: "未知错误时返回"
	}
	meta: {
		code: 500
	}
}

errors: "SERVICE_TIMEOUT": {
	title: {
		en: "ServiceTimeout is returned when the request is timeout"
		zh: "请求超时时返回"
	}
	meta: {
		code: 504
	}
}

errors: "NETWORK_FAILURE": {
	title: {
		en: "NetworkFailure is returned when the network is not available"
		zh: "网络不可用时返回"
	}
	meta: {
		code: 503
	}
}
