# W2D:

#    1. have a github repo;
       1.a make sure you have an empty project dir to start from;
           eg: ~/mattf3

       1.b set up your repo;
            eg: git clone git@github.com:Mattpopa/mattf3.git
                    or create a new repo from cmd
                git remote add origin git@github.com:<YOUR_USERNAME>/<YOUR_REPO_NAME>.git
                git push origin master
                git pull origin origin master

#    2. install tf;
        2.a on mac:
            wget https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_darwin_amd64.zip
             on linux:
            wget https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_linux_amd64.zip
             then
            unzip terraform_0.10.8_linux_amd64.zip && mv terraform /usr/local/sbin/
        make sure tf's in $PATH by typing:
            which terraform
            terraform --version

        2.b have your aws keys set in ~/.aws/credentials;
        2.c add your SSH public key to your AWS account.
        2,d make sure you're in the project dir and do a terraform init

#    3. deploy a single server;
        *if git@github.com:Mattpopa/mattf3.git was cloned in ~, then:
       pushd ~/mattf3
       git reset --hard 
       terraform plan
        [...]
       popd 

#    4. deploy a single web server;
        *if git@github.com:Mattpopa/mattf3.git was cloned in ~, then:
       pushd ~/mattf3
       git reset --hard 
       terraform plan
        [...]
       popd 

#    5. ad-hoc CI/CD;
        edit app.js a couple of times;
        push changes and deploy via tf

#    6. setup jenkins;
        mac:
            brew install jenkins
        linux:
            sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
            sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
            yum install jenkins

#    7. deploy via jenkins;
        create new pipeline job to manage infrastructure 

#    8. clean up;
        remove all resources used here

#    9. closing session; 
        a few words, no slides 

#    10. tip of the hat to (TBD)
