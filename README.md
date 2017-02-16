# dev-setup

Automated dev machine setup using ansible and yadm

1. Setup your ssh-agent

    ```sh
    ssh-add ~/.ssh/id_rsa
    ssh -T git@github.com
    ```

2. Run

    ```sh
    sh -c "$(wget https://raw.github.com/mskrajnowski/dev-setup/master/setup.sh -O -)"
    ```
