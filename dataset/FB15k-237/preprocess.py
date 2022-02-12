# total_relations = []
# with open("relation2text_origin.txt", "r") as file:
#     for line in file.readlines():
#         rel = line.strip().split("\t")[0].split("/")[-1]
#         rel_id = line.strip().split("\t")[0]
#         total_relations.append("\t".join([rel_id, rel.replace("_", " ")]))

# with open("relation2text.txt", "w") as file:
#     for l in total_relations:
#         file.write(l + "\n")



# from collections import Counter
# total_types = Counter()

# with open("./entity2type.txt", 'r') as file:
#     for line in file.readlines():
#         types = line.strip().split("\t")[1:]
#         for t in types:
#             total_types

ent2text = {}
with open("./entity2text.txt", 'r') as file:
    for line in file.readlines():
        line = line.strip()
        ent, text = line.split('\t')
        ent2text[ent] = text


ent2text_long = {}
with open("./entity2textlong.txt", 'r') as file:
    for line in file.readlines():
        line = line.strip()
        ent, text = line.split('\t')
        ent2text_long[ent] = text

for ent, text in ent2text.items():
    if ent not in ent2text_long:
        ent2text_long[ent] = text


with open("./entity2textlong1.txt", 'w') as file:
    for ent, text in ent2text_long.items():
        file.write('\t'.join([ent,text]) + '\n')
