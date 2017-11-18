# W2D:

#    1. have a github repo;
       1.a make sure you have an empty project dir to start from;
           eg: ~/mattf3

#    2. set up your repo;
            eg: git clone git@github.com:Mattpopa/mattf3.git
                    or create a new repo from cmd
                git remote add origin git@github.com:<YOUR_USERNAME>/<YOUR_REPO_NAME>.git
                git push origin master
                git pull origin origin master

#    3. install tf;
        mac:
            wget https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_darwin_amd64.zip
        linux:
            wget https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_linux_amd64.zip
                then
            unzip terraform_0.10.8_linux_amd64.zip && mv terraform /usr/local/sbin/
        make sure tf's in $PATH by typing:
            which terraform
            terraform --version

#    4. deploy a single server;

#    5. deploy a single web server;

#    6. ad-hoc CI/CD;

#    7. setup jenkins;

#    8. deploy via jenkins;

#    9. clean up;

#    10. closing session. 

