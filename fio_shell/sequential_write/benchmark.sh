for i in `seq -w 10`
do
fio ./sequential_write/myjob.fio >> /root/sequential_write/1k/randwe_kvm_1k_$i.txt
sed -i "s/bs=1k/bs=10k/g" ./sequential_write/myjob.fio
rm -rf /mnt/purestorage1/Sequential-Write.0.0

fio ./sequential_write/myjob.fio >> /root/sequential_write/10k/randwe_kvm_10k_$i.txt
sed -i "s/bs=10k/bs=100k/g" ./sequential_write/myjob.fio
rm -rf /mnt/purestorage1/Sequential-Write.0.0

fio ./sequential_write/myjob.fio >> /root/sequential_write/100k/randwe_kvm_100k_$i.txt
sed -i "s/bs=100k/bs=1m/g" ./sequential_write/myjob.fio
rm -rf /mnt/purestorage1/Sequential-Write.0.0

fio ./sequential_write/myjob.fio >> /root/sequential_write/1m/randwe_kvm_1m_$i.txt
sed -i "s/bs=1m/bs=10m/g" ./sequential_write/myjob.fio
rm -rf /mnt/purestorage1/Sequential-Write.0.0

fio ./sequential_write/myjob.fio >> /root/sequential_write/10m/randwe_kvm_10m_$i.txt
sed -i "s/bs=10m/bs=100m/g" ./sequential_write/myjob.fio
rm -rf /mnt/purestorage1/Sequential-Write.0.0

fio ./sequential_write/myjob.fio >> /root/sequential_write/100m/randwe_kvm_100m_$i.txt
sed -i "s/bs=100m/bs=1g/g" ./sequential_write/myjob.fio
rm -rf /mnt/purestorage1/Sequential-Write.0.0

fio ./sequential_write/myjob.fio >> /root/sequential_write/1g/randwe_kvm_1g_$i.txt
sed -i "s/bs=1g/bs=1k/g" ./sequential_write/myjob.fio
rm -rf /mnt/purestorage1/Sequential-Write.0.0
done
