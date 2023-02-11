for item in `ls ../items | grep a.pdf && ls ../items |grep b.docx && ls ../items | grep c.mp3`

do

  folder1=`echo $item | awk -F. '{ print $2 }'`
  folder2=`echo $item | awk -F. '{ print $1 }'`

  mkdir -p $folder1/$folder2
  cp -r ../items/$item $folder1/$folder2

  mkdir -p ../Main/sub1
  mkdir -p ../Main/sub2
  mkdir -p ../Main/sub3


 mv $folder1 ../Main/sub2


done
