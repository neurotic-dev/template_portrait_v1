# WebGet.gd (Node or autoload)
extends Node

## Returns a Dictionary/Array if JSON, else a String.
## Throws an error (via 'push_error') and returns null on failure.

func _ready() -> void:
	# Test Demo
	var data = await get_json("https://jsonplaceholder.typicode.com/todos/1")
	if data != null:
		print(data)  # Dictionary from JSON

func get_json(url: String, headers: PackedStringArray = []) -> Variant:
	var req := HTTPRequest.new()
	req.timeout = 20.0
	add_child(req)

	var err := req.request(url, headers, HTTPClient.METHOD_GET)
	if err != OK:
		push_error("HTTPRequest error: %s" % err)
		req.queue_free()
		return null

	var result: Array = await req.request_completed
	req.queue_free()

	var status = result[0]          # Error code from HTTPRequest (OK == 0)
	var response_code = result[1]   # HTTP status code (e.g., 200)
	var _resp_headers = result[2]
	var body: PackedByteArray = result[3]

	if status != OK:
		push_error("Request failed: status=%s http=%s" % [status, response_code])
		return null

	var text := body.get_string_from_utf8()

	# Try JSON first
	if text.length() > 0 and (text.begins_with("{") or text.begins_with("[")):
		var json := JSON.new()
		var parse_err := json.parse(text)
		if parse_err == OK:
			return json.data
		else:
			push_error("JSON parse error at line %d: %s" % [json.get_error_line(), json.get_error_message()])
			return null

	return text
