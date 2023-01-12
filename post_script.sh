key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCPivmS2KzQiA9UdMRqXEjegkuw3onSulaidqAKxflZS8cZeXiL/9jWN5xq2HoN3GoocG0fPqwZYOR1J9/zBDveuFZHki2OlB85RupiUt8Q/ZaDd+rc9ACaJBh8Yrpf4YmsGSO/Ej1SKMzuL+8Z+l72GNleTk1tdRZ0d8GvbtYBey8SFAOPkvEMdaDhSeSZ7RUi6jlkerrdqaDZpkz3CWQNtEMnjaR0I0msZPXenLU9H2KK6A4jFJ5hQ1rVEVyi7OIsRqun9ud7SAPVFoEIVtJ05SY5fWz1K1DMKTovx75BsfFTT89G2Y1CsuaoZVYb+4aSDOGZuLE4m7FZMI1bfO0F root@buildroot"

grep "${key}" ~/.ssh/authorized_keys
if [ $? -ne 0 ]
then
    key >> ~/.ssh/authorized_keys
else
    echo "key alread added to host"
fi

mkdir -p output/target/etc/dropbear/
cp ../new_key output/target/etc/dropbear/new_key
