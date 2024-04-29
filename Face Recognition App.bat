@echo off
echo Running add_person.py...
call conda activate face-dev
python add_persons.py --backup-dir ./datasets/backup --add-persons-dir ./datasets/new_persons --faces-save-dir ./datasets/data/ --features-path ./datasets/face_features/feature
echo add_person.py completed.

echo Running recognize.py...
python recognize.py --input-dir ./datasets/test_images --output-dir ./datasets/results --features-path ./datasets/face_features/feature
echo recognize.py completed.

echo Press any key to exit...
pause > nul

exit