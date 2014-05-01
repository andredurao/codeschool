A resource is a conceptual mapping to a set of entities, 
not the entity that corresponds to the mapping at any particular point in time. - Steve Klaknik


GET
# => Safe - it should not take any action other than retrieval
# => Idempotent - sequential GET requests to the same URI should not generate side-effects

POST
# => Used to create new resources
# => Neither safe or idempotent
# => some browsers display warning before reissuing POST request
# => Status for the response code should be 201, meaning new resource was created 


PUT/PATCH
# => Used for updating existing resources

	PUT
	# => to send along a resource that will replace the current resource under a specific URI
	# => In Rails for partial updates
	# => Rails 4 partial updates should  be executed with PATCH


DELETE
# => method indicated that the client is not interested in the given resoucre 