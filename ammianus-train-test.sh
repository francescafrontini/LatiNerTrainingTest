cp /home/frontini/Documents/ammianus/gold/gold.ner .
split -l$((`wc -l < gold.ner`/4)) gold.ner

cat xaa xab xac > train_file
cat xad > test_file


./opennlp TokenNameFinderTrainer -data train_file -lang la -params ner-params.par -model ../models/lat-ner-2 -featuregen generator.xml

cat test_file | ./opennlp TokenNameFinder ../models/lat-ner-2 > xaaxabxac

./opennlp TokenNameFinderEvaluator -model ../models/lat-ner-2 -data test_file -encoding UTF-8


cat xaa xab xad > train_file
cat xac > test_file

./opennlp TokenNameFinderTrainer -data train_file -lang la -params ner-params.par -model ../models/lat-ner-2 -featuregen generator.xml

cat test_file | ./opennlp TokenNameFinder ../models/lat-ner-2 > xaaxabxad

./opennlp TokenNameFinderEvaluator -model ../models/lat-ner-2 -data test_file -encoding UTF-8


cat xab xac xad > train_file
cat xab > test_file

./opennlp TokenNameFinderTrainer -data train_file -lang la -params ner-params.par -model ../models/lat-ner-2 -featuregen generator.xml

cat test_file | ./opennlp TokenNameFinder ../models/lat-ner-2 > xabxacxad

./opennlp TokenNameFinderEvaluator -model ../models/lat-ner-2 -data test_file -encoding UTF-8


cat xab xac xad > train_file
cat xaa > test_file

./opennlp TokenNameFinderTrainer -data train_file -lang la -params ner-params.par -model ../models/lat-ner-2 -featuregen generator.xml

cat test_file | ./opennlp TokenNameFinder ../models/lat-ner-2 > xabxacxad

./opennlp TokenNameFinderEvaluator -model ../models/lat-ner-2 -data test_file -encoding UTF-8




./opennlp TokenNameFinderTrainer -data gold.ner -lang la -params ner-params.par -model ../models/lat-ner-2 -featuregen generator.xml

