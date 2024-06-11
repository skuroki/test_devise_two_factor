# README

I am writing test code for the devise-two-factor gem.
I am documenting the incorrect implementation (User) where backup codes do not work in a MySQL environment, and the correct implementation (AnotherUser) where they do.

## How to Run

```
docker-compose up
docker-compose exec web rails test
```
