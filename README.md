# heimdall_logbook
A gem to log all incoming request and response


https://rubygems.org/gems/heimdall_logbook


Often we need to monitor what response was sent to client for specific request, this info can be useful in case of knowing latest changes are working as expected and can be used for debugging in case there are any issue. Idea is to develop a wrapper which will store request-response details as per users requirement. 


Roadmap:
1. Store request and response in DB(activerecord) & add hook to allow/skip storing of specific action.
2. Allow user to select & deselect fields which needs to be store
3. support mongoid based storing
4. Convert to engine and provide UI where user can view and manage request-response
5. Allow user to select storage options - DB, files , s3 storage etc.
6. Autocleanup for old records *
