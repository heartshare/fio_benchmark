for i in `seq -w 10`
do
fio ./random_read/myjob.fio >> /root/random_read/1k/randrd_kvm_1k_$i.txt
sed -i "s/bs=1k/bs=10k/g" ./random_read/myjob.fio
rm -rf /mnt/purestorage1/Random-Read.0.0

fio ./random_read/myjob.fio >> /root/random_read/10k/randrd_kvm_10k_$i.txt
sed -i "s/bs=10k/bs=100k/g" ./random_read/myjob.fio
rm -rf /mnt/purestorage1/Random-Read.0.0

fio ./random_read/myjob.fio >> /root/random_read/100k/randrd_kvm_100k_$i.txt
sed -i "s/bs=100k/bs=1m/g" ./random_read/myjob.fio
rm -rf /mnt/purestorage1/Random-Read.0.0

fio ./random_read/myjob.fio >> /root/random_read/1m/randrd_kvm_1m_$i.txt
sed -i "s/bs=1m/bs=10m/g" ./random_read/myjob.fio
rm -rf /mnt/purestorage1/Random-Read.0.0

fio ./random_read/myjob.fio >> /root/random_read/10m/randrd_kvm_10m_$i.txt
sed -i "s/bs=10m/bs=100m/g" ./random_read/myjob.fio
rm -rf /mnt/purestorage1/Random-Read.0.0

fio ./random_read/myjob.fio >> /root/random_read/100m/randrd_kvm_100m_$i.txt
sed -i "s/bs=100m/bs=1g/g" ./random_read/myjob.fio
rm -rf /mnt/purestorage1/Random-Read.0.0

fio ./random_read/myjob.fio >> /root/random_read/1g/randrd_kvm_1g_$i.txt
sed -i "s/bs=1g/bs=1k/g" ./random_read/myjob.fio
rm -rf /mnt/purestorage1/Random-Read.0.0
done
