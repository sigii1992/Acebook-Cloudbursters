# AceBook
Facebook clone built using Rails for the first time. Finished features include profile pages, a news feed of other user's posts and uploaded images, including the ability to comment on them and like them.
This is the second group engineering project at Makers Academy bootcamp.

Link to the Trello board:
https://trello.com/b/v0gAtNXv/cloudbursters

Link to the Draw.io ERD diagram:
https://drive.google.com/file/d/19J-TP3VOfCpgU1ab-6hGNZ59vvMZgcpK/view?usp=sharing

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```
You will also need to install Imagemagik directly.
`brew install imagemagick`

## Screenshots

![ac-home](https://user-images.githubusercontent.com/81166702/156771756-148889ae-a68c-413d-8ac1-cb720e51757e.png)
![ac-login](https://user-images.githubusercontent.com/81166702/156771757-1f51f78a-32b1-4e66-8d7c-d7f740f2418f.png)
![ac-signup](https://user-images.githubusercontent.com/81166702/156771759-60b3294a-e18e-468b-ba7a-30714d2d8dd1.png)
![addpost](https://user-images.githubusercontent.com/81166702/156771760-50f25eaa-3523-40ed-8ac7-874a29ce39ae.png)
![post](https://user-images.githubusercontent.com/81166702/156771764-43711400-3687-4ccb-becf-6c9af02e28f2.png)
![userhome](https://user-images.githubusercontent.com/81166702/156771769-12e1185d-b304-48a0-aaf6-c7800c8b3f64.png)

## Troubleshooting

If you don't have Node.js installed yet, you might run into this error when running rspec:

```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
```

Rails requires a Javascript runtime to work. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again
