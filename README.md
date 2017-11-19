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
          
       git reset --hard 33655e98824970fcbe06f3f86ac02ab30a40ef76
          Possible COMMIT Hashes:
            
            commit b87a6d41d6f34c9e1c6286c74f63dc3d6ea8aadf
            
                mattf: deploy single server w/ SG and Outputs
            
            commit 0e71364529ed309d0cdce580afcde3f775b7cd15
            
                mattf: deploy single instance w/ SGs
            
            commit 59d571c9336df331b01469771f5bf94f6d512546
            
                mattf3: deploy single server w/ name and key
            
            commit 33655e98824970fcbe06f3f86ac02ab30a40ef76
            
                mattf3: deploy a single server 
        [...]
       popd 

#    4. deploy a custom web server;
        git reset --hard COMMIT_HASH
    
            commit 91fbada6864ed7955d4f8932739f6226e86addef


#    5. ad-hoc CI/CD;
        edit app.js a couple of times;
        push changes and deploy via tf
        git reset --hard COMMIT_HASH

            commit 8620361e5c2c0b43311a92fe44fa211346c0ee7c
            mattf: redeploy custom web server w/ diff content

            commit 78206f44486ca81503e65db247cc5ce1c2001131 
            mattf3: unit test example & new data gif

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


#ps: I use some aliases
alias tf='terraform'
alias tf_add='terraform apply -var '\''extra_var=false'\'' -var '\''extra_var2=true'\'''
alias tf_app='terraform apply -var '\''extra_var=false'\'' -var '\''extra_var2=true'\'''
alias tf_dest='(echo yes) | terraform destroy'
alias tf_env='terraform workspace list'
alias tf_get='terraform get'
alias tf_plan='terraform plan -var '\''extra_var=false'\'' -var '\''extra_var2=true'\'''
alias tf_ref='terraform refresh'
alias tf_sel='terraform workspace select'
