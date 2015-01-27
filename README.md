# CAPHUM

* Instalar rvm

```console
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable
```

* Instalar ruby 2.2

```console
rvm install 2.2
```

* Instalar gemas

```console
cd caphum
rvm use 2.2@caphum --create --ruby-version
bundle install
```

* Configurar la base de datos

```console
cp config/database.yml.sample config/database.yml

nano config/database.yml
```

Configurar la parte de desarrollo (`default` y `development`):

```yaml
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: root
  password: root
  socket: /var/run/mysqld/mysqld.sock

development:
  <<: *default
  database: caphum_development
```

* Configurar el archivo `secrets.yml`

```console
cp config/secrets.yml.sample config/secrets.yml
```

* Inicializar la base de datos y migraciones

```console
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

Con el último comando se crea el usuario y el password del administrador

```
Email: admin@caphum.com
Password: demo123
```

* Iniciar servidor en modo desarrollo

```console
rails server
```

* Visitar la URL http://localhost:3000
