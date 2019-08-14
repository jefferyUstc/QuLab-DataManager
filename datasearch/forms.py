# from django import forms
#
#
# class SearchForm(forms.Form):
#     MAJOR_TYPE = [
#         ('TCD', 'T cell development'),
#         ('RDA', 'Retina and dark adaptation'),
#         ('DN', 'Decidua NK'),
#         ('AD', 'Autoimmune disease'),
#         ('MI', 'Mitosis'),
#         ('BT', 'Brain tumor'),
#         ('OT', 'Others'),
#     ]
#     ANI_MODEL = [
#         ('DM', 'Disease Model'),
#         ('AM', 'Animal Model'),
#         ('MO', 'Model Organism'),
#     ]
#     DATA_TYPE = [
#         ('scRNA', 'Single-cell RNA'),
#         ('scATAC', 'Single-cell ATAC'),
#         ('bkRNA', 'Bulk RNA'),
#         ('bkATAC', 'Bulk ATAC'),
#         ('bkChip', 'Bulk Chip'),
#     ]
#     article_name = forms.CharField(label="Article Name:", max_length=255)
#     pub_time = forms.DateField(label="Published After: ")
#     dataclass = forms.CharField(max_length=3, choices=MAJOR_TYPE)
#     species = forms.CharField(max_length=50)
#     ani_model = forms.CharField(max_length=2, choices=ANI_MODEL, label='Disease/Animal Model/Model Organism')
#     disease_organ = forms.CharField(max_length=50, label='Disease Type/Organ Type')
#     cell_type = forms.CharField(max_length=20)
#     data_type = forms.CharField(max_length=6, choices=DATA_TYPE, label='Data Type')
#     tech_type = forms.CharField(max_length=20, label='Sequencing Technology')
