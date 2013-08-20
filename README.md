Lobby
=====

> Could all new deployments please wait in the lobby. Your worker will be with you soon.

Lobby is a little RPC service for isolating and automating software deployments.

It doesn’t handle versioning, statuses or anything related to workflow. Its single responsibility is to be a trigger for pushing out code.

Operations
----------

### Deploy

```
POST /deploy

{
	"strategy": "CapDeploy"
	"commit": "hash",
	"repo": "owner/name"
}
```

### Deployment Strategies

```
GET /strategies
```

