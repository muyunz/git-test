for i in {1..100}
do
   git branch "b-$i"
   git checkout "b-$i"
   echo "$i" > data
   git add -A
   git commit -am "$i"
   git checkout master
   git merge "b-$i"
   git branch -d "b-$i"
   git push -u origin master
done