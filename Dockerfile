# Use the official SonarQube image as base
FROM sonarqube:latest

# Optional: If you want to add custom plugins, copy them to the extensions directory
# COPY plugins/*.jar /opt/sonarqube/extensions/plugins/

# Optional: If you want to configure additional settings, copy your configuration file
# COPY sonar.properties /opt/sonarqube/conf/

# Optional: If you have a custom script to execute on startup, you can copy it
# COPY startup-script.sh /opt/sonarqube/bin/

# Expose the default SonarQube port
EXPOSE 9000
