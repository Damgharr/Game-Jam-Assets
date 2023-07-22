class_name ServiceLocator
extends Node

@export var _class : String = "GDScript"

var _services : Dictionary


func register(service : Service):
	if !service.is_class_name(_class):
		push_error("Sevice is not of type %s." % [service.get_class()])
		return
	
	var key : String = service.name

	if _services.has(service):
		push_error("Attempted to register service of type %s which is already registered with the %s." % [service.get_class_name(), self])
		return
	
	_services[key] = service


func unregister(service : Service):
	if !service.is_class_name(_class):
		push_error("Sevice is not of type %s." % [service.get_class()])
		return

	var key : String = service.name

	if !_services.has(service):
		push_error("Attempted to unregister service of type %s which is already registered with the %s." % [service.get_class_name(), self])
		return
	
	_services.erase(key)


func get_service(key):
	if !_services.has(key):
		push_error("%s not registered with %s." % [key, self])
		return
	
	return _services[key]
