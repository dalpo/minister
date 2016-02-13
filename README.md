# Minister

Prototype for an optionated admin dashboard for fast and flexible development.
This is only a smart scaffold heavily inspired by rails_admin and administrate.

# Priciples:

- Avoid DSL. Everithing should be only a PORO.

- Sandi Metz' Rules For Developers
  1. Classes can be no longer than one hundred lines of code.
  2. Methods can be no longer than five lines of code.
  3. Pass no more than four parameters into a method. Hash options are parameters.
  4. Controllers can instantiate only one object. Therefore, views can only know about one instance variable and views should only send messages to that object. (See Facades patterns)

### Minister manifests:

With Minister you could have more admin dashboards. Every dashboard has its own manifest.

Minister could manage different admin dashboard.
Every admin dashboard has got its manifest which defines its resources.


### Minister libraries stack:

#### Facades patterns:

http://c2.com/cgi/wiki?FacadePattern

#### Responders:

 - flash responders...

#### Ransack

Search...

#### Turbolinks

#### Simple Form

---

This project rocks and uses MIT-LICENSE.
