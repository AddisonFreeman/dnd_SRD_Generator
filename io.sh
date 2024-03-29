#!/bin/bash
convert_skullsplitter_md_to_html() {
  # if [[ $filename == *"0_feats.html"* ]]; then
  curl -X POST \
    https://09962f2d6dcf61f358c1c601a670003b:c6414ed59fdf86c9a14c156302cbb489@skullsplitter.myshopify.com/admin/api/2019-07/pages.json \
    -H 'Content-Type: application/json' \
    -H 'Postman-Token: 99dc91b2-2f89-48be-b4b9-1c2ad5378315' \
    -H 'cache-control: no-cache' \
    -d "{\"page\": {\"title\": \"$1\",\"body_html\": \"$2\",\"template_suffix\": \"srd\",\"handle\":\"dnd5e\/$1\"}}" >> curlOutput.txt
    sleep 1  
  # fi
}

legal() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/00_legal/* | while read -r file; 
  do 
    # if [[ $file == *".html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{85\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

races() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/01_races/* | while read -r file; 
  do 
    # if [[ $file == *"0_Races.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{85\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

classes() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/02_classes/* | while read -r file; 
  do 
    # if [[ $file == *"02_Bard.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{88\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

beyond() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/03_beyond1st/* | while read -r file; 
  do 
    # if [[ $file == *"1_Multiclassing.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{89\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

equipment() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/04_equipment/* | while read -r file; 
  do 
    # if [[ $file == *"3_Weapons.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{89\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

feats() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/05_feats/* | while read -r file; 
  do 
    # if [[ $file == *"0_Feats.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{85\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

mechanics() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/06_mechanics/* | while read -r file; 
  do 
    # if [[ $file == *"1_Ability Scores.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{89\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

combat() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/07_combat/* | while read -r file; 
  do 
    # if [[ $file == *"0_combat.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{86\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

spellcasting() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/08_spellcasting/* | while read -r file; 
  do 
    # if [[ $file == *"4_Spell Descriptions.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{92\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

hazards() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/09_hazards/* | while read -r file; 
  do 
    # if [[ $file == *"0_Spellcasting.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{87\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

magic_items() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/10_magic_items/* | while read -r file; 
  do 
    # if [[ $file == *"0_Magic Items.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{91\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

monsters() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/11_monsters/* | while read -r file; 
  do 
    if [[ $file == *"10_Monsters (I).html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{89\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    fi
  done
}

conditions() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/12_conditions/* | while read -r file; 
  do 
    # if [[ $file == *"0_Monsters.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{90\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

gods() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/13_gods/* | while read -r file; 
  do 
    # if [[ $file == *"0_Monsters.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{84\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

planes() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/14_planes/* | while read -r file; 
  do 
    # if [[ $file == *"0_Monsters.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{86\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

creatures() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/15_creatures/* | while read -r file; 
  do 
    # if [[ $file == *"0_Monsters.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{89\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

npcs() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/16_npcs/* | while read -r file; 
  do 
    # if [[ $file == *"0_Monsters.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{84\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

main() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/17_main/* | while read -r file; 
  do 
    if [[ $file == *"00_Master Table Of Contents.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{85\}//')"
      file=${file::${#file}-5}
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    fi
  done
}

spells() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/08_spellcasting/00_Spell\ Descriptions/* | while read -r file; 
  do 
    # if [[ $file == *"AF128_Enlarge-Reduce.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{118\}//')"
      file=${file::${#file}-5 }
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

individual_creatures() {
  ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/15_creatures/00_Creatures/* | while read -r file; 
  do 
    # if [[ $file == *"00_Ape.html"* ]]; then
      value=$(<"$file")
      file="$(echo $file | sed 's/^.\{104\}//')"
      file=${file::${#file}-5 }
      echo $file
      convert_skullsplitter_md_to_html "$file" "$value"; 
    # fi
  done
}

# readfile
# ls -f /Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out-unmodified/11_monsters/* | while read -r file; 
# do
  # value=$(<"$file")
  # echo "$value"
# done





# result=`xml sel -t -c "count(//h4)" out-unmodified/15_creatures/0_Creatures.html`;
# i=0;
# while [ $i -lt $result ]; do
#     id=`xml sel -t -v "//h4[count(preceding-sibling::h4)=$i]" out-unmodified/15_creatures/0_Creatures.html`;
#     echo $id;
#     xml sel -t -c "//h4[count(preceding-sibling::h4)=$i]" out-unmodified/15_creatures/0_Creatures.html > out-unmodified/15_creatures/00_Creatures/0$i'_'$id.html
#     xml sel -t -c "//*[not(self::h4) and count(preceding-sibling::h4)=$i+1]" out-unmodified/15_creatures/0_Creatures.html >> out-unmodified/15_creatures/00_Creatures/0$i'_'$id.html
#     i=$(($i+1));
# done;


# xml
# legal 
# races
# classes
# beyond
# equipment
# feats
# mechanics
# combat
# spellcasting
# hazards
# magic_items
# monsters
# conditions
# gods
# planes
# creatures
# npcs
# main
# spells
individual_creatures

