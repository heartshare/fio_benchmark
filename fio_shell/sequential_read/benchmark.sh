for i in `seq -w 10`
do
fio /root/fio_shell/sequential_read/myjob.fio >> /root/sequential_read/1k/sequenrd_1k_$i.txt
sed -i "s/bs=1k/bs=10k/g" /root/fio_shell/sequential_read/myjob.fio
rm -rf /mnt/purestorage/Sequential-Read.0.0

fio /root/fio_shell/sequential_read/myjob.fio >> /root/sequential_read/10k/sequenrd_10k_$i.txt
sed -i "s/bs=10k/bs=100k/g" /root/fio_shell/sequential_read/myjob.fio
rm -rf /mnt/purestorage/Sequential-Read.0.0

fio /root/fio_shell/sequential_read/myjob.fio >> /root/sequential_read/100k/sequenrd_100k_$i.txt
sed -i "s/bs=100k/bs=1m/g" /root/fio_shell/sequential_read/myjob.fio
rm -rf /mnt/purestorage/Sequential-Read.0.0

fio /root/fio_shell/sequential_read/myjob.fio >> /root/sequential_read/1m/sequenrd_1m_$i.txt
sed -i "s/bs=1m/bs=10m/g" /root/fio_shell/sequential_read/myjob.fio
rm -rf /mnt/purestorage/Sequential-Read.0.0

fio /root/fio_shell/sequential_read/myjob.fio >> /root/sequential_read/10m/sequenrd_10m_$i.txt
sed -i "s/bs=10m/bs=100m/g" /root/fio_shell/sequential_read/myjob.fio
rm -rf /mnt/purestorage/Sequential-Read.0.0

fio /root/fio_shell/sequential_read/myjob.fio >> /root/sequential_read/100m/sequenrd_100m_$i.txt
sed -i "s/bs=100m/bs=1g/g" /root/fio_shell/sequential_read/myjob.fio
rm -rf /mnt/purestorage/Sequential-Read.0.0

fio /root/fio_shell/sequential_read/myjob.fio >> /root/sequential_read/1g/sequenrd_1g_$i.txt
sed -i "s/bs=1g/bs=1k/g" /root/fio_shell/sequential_read/myjob.fio
rm -rf /mnt/purestorage/Sequential-Read.0.0
done
