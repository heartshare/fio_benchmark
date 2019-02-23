for i in `seq -w 10`
do
fio myjob.fio >> /root/sequential_read/1k/randwe_kvm_1k_$i.txt
sed -i "s/bs=1k/bs=10k/g" myjob.fio
rm -rf /mnt/purestorage1/Sequential-Read.0.0

fio myjob.fio >> /root/sequential_read/10k/randwe_kvm_10k_$i.txt
sed -i "s/bs=10k/bs=100k/g" myjob.fio
rm -rf /mnt/purestorage1/Sequential-Read.0.0

fio myjob.fio >> /root/sequential_read/100k/randwe_kvm_100k_$i.txt
sed -i "s/bs=100k/bs=1m/g" myjob.fio
rm -rf /mnt/purestorage1/Sequential-Read.0.0

fio myjob.fio >> /root/sequential_read/1m/randwe_kvm_1m_$i.txt
sed -i "s/bs=1m/bs=10m/g" myjob.fio
rm -rf /mnt/purestorage1/Sequential-Read.0.0

fio myjob.fio >> /root/sequential_read/10m/randwe_kvm_10m_$i.txt
sed -i "s/bs=10m/bs=100m/g" myjob.fio
rm -rf /mnt/purestorage1/Sequential-Read.0.0

fio myjob.fio >> /root/sequential_read/100m/randwe_kvm_100m_$i.txt
sed -i "s/bs=100m/bs=1g/g" myjob.fio
rm -rf /mnt/purestorage1/Sequential-Read.0.0

fio myjob.fio >> /root/sequential_read/1g/randwe_kvm_1g_$i.txt
sed -i "s/bs=1g/bs=1k/g" myjob.fio
rm -rf /mnt/purestorage1/Sequential-Read.0.0
done
