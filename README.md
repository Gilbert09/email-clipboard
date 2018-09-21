# Email Clipboard
A super simple script to generate legitimate email addresses for testing services where you need an unique email address, turn `example@domain.com` to `example+1537533901@domain.com`

Using Mac OS X Automator, we can bind the generation to a key combination that copies the newly generated email address to your clipboard.

---

### Command Line Args
`-timestamp` generates an address like `example+1537533901@domain.com`
`-word` generates an address likes `example+silver@domain.com`

---

### Step 1

The first thing to do is to create a new service like the one below. Export your email address as an env var then start the ruby script.

![Mac OS X Automator](https://i.imgur.com/QAu8xk2.png)

---

### Step 2

The next step is to bind this to a key which can be done under "Keyboard Shortcuts".

![Mac OS X Keyboard Shortcuts](https://i.imgur.com/Kg8yZq0.png)
