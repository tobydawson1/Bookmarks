## Makers Academy - Week 4 Pair Programming

Bookmark Manager
=================

[Task](#Task) | [Installation](#Installation) | [Funtional Description](#description) | [User Stories](#User) | [Testing](#Testing) |

Technologies: Javascript, Jasmine, HTML, CSS

## Task

Web app that allows a user to store, add and access his/her bookmark. This is focussed around introducing your to data query's using databases to store URL's that can be accessed by the user.


## <a name="description">Functional Description</a>

The website will have the following specification:

* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks

## <a name="User">User Stories</a>
```
As a user
In order to pick my bookmark
I want to see a list of my bookmarks
```

```
As a user
In order to save a bookmark
I want to be able to add to the list of bookmarks
```

```
As a user
In order to remove a bookmark
I would like to be able to delete a bookmark
```

```
As a user
In order to personalise my bookmarks
I would like to be able to update my bookmarks.
```

```
As a user
In order to make my bookmarks clearer
I would like to be able to add comments to my bookmarks.
```

```
As a user
In order to catagorise my bookmarks
I would like to be able to add a tag to my bookmarks.
```

```
As a user
In order to find my bookmarks
I would like to be able to filter my bookmarks by their tag. 
```

```
As part of the system
In order to keep privacy
I would like users to only be able to access their bookmarks
```

## Testing

Testing was done through the frameworks RSpec and Capybara

```
cd Bookmarks
rspec
```
