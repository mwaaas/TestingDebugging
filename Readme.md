Debugging Java applications inside a container in intellij. 


Its very easy only contains two steps 

   1. Run your java application with this option 
        
            -agentlib:jdwp=transport=dt_socket,address=8787,server=y,suspend=n
        
        In this project if you run make debug it will do that for you
   2. Create docker compose configuration by running the app service as follows
        ![Alt text](creating_docker_configuration.png)
        
        Ensure on the configuration docker-compose has been created
        ![Alt text](confirm_docker_compose_configuration_creation.png)
     
   2. On intellij  create a remote configuration that looks like the diagram below 
        
       Note that the container should expose the same port configured in your remote debug configuration
        ![Alt text](adding_before_launch_configuration_1.png)
        ![Alt text](adding_before_launch_configuration_2.png)
        ![Alt text](adding_before_launch_configuration_3.png)
  
 
  
  