for i in {1..100}
do
   echo "$i" > data
   git add -A
   git commit -am "$i"
   git push -u origin master
   sleep 10
done