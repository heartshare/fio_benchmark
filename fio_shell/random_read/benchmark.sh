for i in `seq -w 10`
do
fio /root/fio_shell/random_read/myjob.fio >> /root/random_read/1k/randrd_1k_$i.txt
sed -i "s/bs=1k/bs=10k/g" /root/fio_shell/random_read/myjob.fio
rm -rf /mnt/purestorage/Random-Read.0.0

fio /root/fio_shell/random_read/myjob.fio >> /root/random_read/10k/randrd_10k_$i.txt
sed -i "s/bs=10k/bs=100k/g" /root/fio_shell/random_read/myjob.fio
rm -rf /mnt/purestorage/Random-Read.0.0

fio /root/fio_shell/random_read/myjob.fio >> /root/random_read/100k/randrd_100k_$i.txt
sed -i "s/bs=100k/bs=1m/g" /root/fio_shell/random_read/myjob.fio
rm -rf /mnt/purestorage/Random-Read.0.0

fio /root/fio_shell/random_read/myjob.fio >> /root/random_read/1m/randrd_1m_$i.txt
sed -i "s/bs=1m/bs=10m/g" /root/fio_shell/random_read/myjob.fio
rm -rf /mnt/purestorage/Random-Read.0.0

fio /root/fio_shell/random_read/myjob.fio >> /root/random_read/10m/randrd_10m_$i.txt
sed -i "s/bs=10m/bs=100m/g" /root/fio_shell/random_read/myjob.fio
rm -rf /mnt/purestorage/Random-Read.0.0

fio /root/fio_shell/random_read/myjob.fio >> /root/random_read/100m/randrd_100m_$i.txt
sed -i "s/bs=100m/bs=1g/g" /root/fio_shell/random_read/myjob.fio
rm -rf /mnt/purestorage/Random-Read.0.0

fio /root/fio_shell/random_read/myjob.fio >> /root/random_read/1g/randrd_1g_$i.txt
sed -i "s/bs=1g/bs=1k/g" /root/fio_shell/random_read/myjob.fio
rm -rf /mnt/purestorage/Random-Read.0.0
done
