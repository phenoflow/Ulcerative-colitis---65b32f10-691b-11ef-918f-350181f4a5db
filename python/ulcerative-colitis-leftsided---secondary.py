# phekb, 2024.

import sys, csv, re

codes = [{"code":"45586718","system":"ICD10CM"},{"code":"45586718","system":"ICD10CM"},{"code":"44837173","system":"ICD10CM"},{"code":"44837173","system":"ICD10CM"},{"code":"40481367","system":"ICD10CM"},{"code":"40482865","system":"ICD10CM"},{"code":"40481367","system":"ICD10CM"},{"code":"40482865","system":"ICD10CM"},{"code":"45586718","system":"ICD10CM"},{"code":"45586718","system":"ICD10CM"},{"code":"44837173","system":"ICD10CM"},{"code":"44837173","system":"ICD10CM"},{"code":"40481367","system":"ICD10CM"},{"code":"40482865","system":"ICD10CM"},{"code":"40481367","system":"ICD10CM"},{"code":"40482865","system":"ICD10CM"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ulcerative-colitis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ulcerative-colitis-leftsided---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ulcerative-colitis-leftsided---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ulcerative-colitis-leftsided---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
