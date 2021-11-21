#!/bin/sh
      sudo apt-get update
      sudo apt install -y apache2
      sudo systemctl status apache2
      sudo systemctl start apache2
      sudo chown -R $USER:$USER /var/www/html
      myip=`curl http://169.254.169.254/latest/meta-data/instance-id`
      cat <<FOF > /var/www/html/index.html
      <html>
        <body>
          <h1>.....................Projekt "OpenAPM"........................</h1>
          <h2>Review 2</h2>
            <ul>
              <li>AWS / EC2 Instance</li>
              <li>Grafana</li>
              <li>Prometheus</li>
              <li>Terraform</li>
            </ul>
          <h2>HTW-Team</h2>
          <ul>
            <li>Dana</li>
            <li>Verena</li>
            <li>Julia</li>
            <li>Sabina</li>
            <li>Anna</li>
            <li>Luciena</li>
            <li>Paulette</li>
            <li>Rabiye</li>
          </ul>
         
          <h1>................................................................................</h1>

          <footer>
          <br/>
          <br/>
          <br/>
          <br/>
          <br/>
          <p>HTW Berlin</p>
          <p>18.11.2021</p>
          </footer>
        </body>

       </html>
       