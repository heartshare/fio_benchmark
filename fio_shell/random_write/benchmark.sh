for i in `seq -w 10`
do
fio ./random_write/myjob.fio >> /root/random_write/1k/randwe_kvm_1k_$i.txt
sed -i "s/bs=1k/bs=10k/g" ./random_write/myjob.fio
rm -rf /mnt/purestorage1/Random-Write.0.0

fio ./random_write/myjob.fio >> /root/random_write/10k/randwe_kvm_10k_$i.txt
sed -i "s/bs=10k/bs=100k/g" ./random_write/myjob.fio
rm -rf /mnt/purestorage1/Random-Write.0.0

fio ./random_write/myjob.fio >> /root/random_write/100k/randwe_kvm_100k_$i.txt
sed -i "s/bs=100k/bs=1m/g" ./random_write/myjob.fio
rm -rf /mnt/purestorage1/Random-Write.0.0

fio ./random_write/myjob.fio >> /root/random_write/1m/randwe_kvm_1m_$i.txt
sed -i "s/bs=1m/bs=10m/g" ./random_write/myjob.fio
rm -rf /mnt/purestorage1/Random-Write.0.0

fio ./random_write/myjob.fio >> /root/random_write/10m/randwe_kvm_10m_$i.txt
sed -i "s/bs=10m/bs=100m/g" ./random_write/myjob.fio
rm -rf /mnt/purestorage1/Random-Write.0.0

fio ./random_write/myjob.fio >> /root/random_write/100m/randwe_kvm_100m_$i.txt
sed -i "s/bs=100m/bs=1g/g" ./random_write/myjob.fio
rm -rf /mnt/purestorage1/Random-Write.0.0

fio ./random_write/myjob.fio >> /root/random_write/1g/randwe_kvm_1g_$i.txt
sed -i "s/bs=1g/bs=1k/g" ./random_write/myjob.fio
rm -rf /mnt/purestorage1/Random-Write.0.0
done
