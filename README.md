This repo has a bunch of folders, one for each of the solo day challenges.

# c395

these routes are from the ActiveRecord docs and are a good overview of how to remember

```text
HTTP Verb  Path               Used for
---------  ----               --------
GET        /notes            return a list of all notes
GET        /notes/new        return an HTML form for creating a new note
POST       /notes            create a new note
GET        /notes/:id        return a specific note
GET        /notes/:id/edit   return an HTML form for editing a note
PATCH/PUT  /notes/:id        update a specific note
DELETE     /notes/:id        delete a specific note
```

### some useful links

- [git stashing](http://git-scm.com/book/en/Git-Tools-Stashing) -- things would've been a lot messier with out this nugget
- [CSS overflow](http://www.w3schools.com/cssref/pr_pos_overflow.asp)
- the `trim_to` helper function uses [this regex](http://www.velvetcache.org/2011/06/07/regex-fun-get-a-substring-by-length-breaking-on-word-boundary) but injects the max length dynamically using % notation in ruby
- finding [colors](http://www.colorhunter.com/color/8B0000) was fun although i don't think i ended up using any.  oh yeah, i almost [styled my buttons](http://www.usabilitypost.com/2012/01/10/pressed-button-state-with-css3/) with some fancy stuff but decided against shooting the moon with my janky css.
- someone called me a hipster the other day so i've been using this: http://hipsteripsum.me/