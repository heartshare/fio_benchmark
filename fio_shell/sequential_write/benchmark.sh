for i in `seq -w 10`
do
fio /root/fio_shell/sequential_write/myjob.fio >> /root/sequential_write/1k/sequenwe_1k_$i.txt
sed -i "s/bs=1k/bs=10k/g" /root/fio_shell/sequential_write/myjob.fio
rm -rf /mnt/purestorage/Sequential-Write.0.0

fio /root/fio_shell/sequential_write/myjob.fio >> /root/sequential_write/10k/sequenwe_10k_$i.txt
sed -i "s/bs=10k/bs=100k/g" /root/fio_shell/sequential_write/myjob.fio
rm -rf /mnt/purestorage/Sequential-Write.0.0

fio /root/fio_shell/sequential_write/myjob.fio >> /root/sequential_write/100k/sequenwe_100k_$i.txt
sed -i "s/bs=100k/bs=1m/g" /root/fio_shell/sequential_write/myjob.fio
rm -rf /mnt/purestorage/Sequential-Write.0.0

fio /root/fio_shell/sequential_write/myjob.fio >> /root/sequential_write/1m/sequenwe_1m_$i.txt
sed -i "s/bs=1m/bs=10m/g" /root/fio_shell/sequential_write/myjob.fio
rm -rf /mnt/purestorage/Sequential-Write.0.0

fio /root/fio_shell/sequential_write/myjob.fio >> /root/sequential_write/10m/sequenwe_10m_$i.txt
sed -i "s/bs=10m/bs=100m/g" /root/fio_shell/sequential_write/myjob.fio
rm -rf /mnt/purestorage/Sequential-Write.0.0

fio /root/fio_shell/sequential_write/myjob.fio >> /root/sequential_write/100m/sequenwe_100m_$i.txt
sed -i "s/bs=100m/bs=1g/g" /root/fio_shell/sequential_write/myjob.fio
rm -rf /mnt/purestorage/Sequential-Write.0.0

fio /root/fio_shell/sequential_write/myjob.fio >> /root/sequential_write/1g/sequenwe_1g_$i.txt
sed -i "s/bs=1g/bs=1k/g" /root/fio_shell/sequential_write/myjob.fio
rm -rf /mnt/purestorage/Sequential-Write.0.0
done
