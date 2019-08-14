from django.db import models


class Article(models.Model):
    p_id = models.CharField(max_length=15, primary_key=True, verbose_name="PubMed ID")
    article_name = models.CharField(max_length=255, verbose_name="Article")
    journal = models.CharField(max_length=255)
    pub_time = models.DateField(verbose_name="Published Time")
    up_user = models.CharField(max_length=50, verbose_name="Upload User")

    def __str__(self):
        return self.article_name


class Annotation(models.Model):
    control = models.BooleanField(verbose_name='Whether the experiment has control samples?')
    sample = models.BooleanField(verbose_name='Whether each cell or data has sample information?')
    gender = models.BooleanField(verbose_name='Whether the data has gender annotation?')
    age = models.BooleanField(verbose_name='Whether the data has age annotation?')
    clinical = models.BooleanField(verbose_name='Whether the data has clinical information annotation?')
    summary = models.TextField(null=True)
    article = models.OneToOneField(Article, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.article.article_name)


class CellType(models.Model):
    parent = models.ForeignKey("self", on_delete=models.CASCADE, null=True, blank=True, related_name='children', default=9)
    type = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.type

    def get_cell_type_all(self):
        return self.objects.get(type='All')


class Metadata(models.Model):
    s_id = models.AutoField(primary_key=True)
    s_summary = models.TextField(verbose_name='Summary', null=True)
    article = models.ForeignKey(Article, on_delete=models.CASCADE)

    def __str__(self):
        return self.article.article_name


class Data(models.Model):
    MAJOR_TYPE = [
        ('TCD', 'T cell development'),
        ('RDA', 'Retina and dark adaptation'),
        ('DN', 'Decidua NK'),
        ('AD', 'Autoimmune disease'),
        ('MI', 'Mitosis'),
        ('BT', 'Brain tumor'),
        ('OT', 'Others'),
    ]
    ANI_MODEL = [
        ('DM', 'Disease Model'),
        ('AM', 'Animal Model'),
        ('MO', 'Model Organism'),
    ]
    DATA_TYPE = [
        ('scRNA', 'Single-cell RNA'),
        ('scATAC', 'Single-cell ATAC'),
        ('bkRNA', 'Bulk RNA'),
        ('bkATAC', 'Bulk ATAC'),
        ('bkChip', 'Bulk Chip'),
    ]
    id = models.AutoField(primary_key=True)
    article = models.ForeignKey(Article, on_delete=models.CASCADE)
    data_class = models.CharField(max_length=3, choices=MAJOR_TYPE)
    species = models.CharField(max_length=50)
    ani_model = models.CharField(max_length=2, choices=ANI_MODEL, verbose_name='Disease/Animal Model/Model Organism')
    disease_organ = models.CharField(max_length=100, verbose_name='Disease Type/Organ Type')
    cell_type = models.ManyToManyField(CellType, verbose_name='Cell Type')
    data_type = models.CharField(max_length=6, choices=DATA_TYPE, verbose_name='Data Type')
    tech_type = models.CharField(max_length=100, null=True, verbose_name='Sequencing Technology')
    seq_platform = models.CharField(max_length=100, null=True, verbose_name='Sequencing Platform')
    n_samples = models.CharField(max_length=50, null=True, verbose_name='Number of Cells or Samples')
    data_format = models.CharField(max_length=20, verbose_name='Data Format')

    def __str__(self):
        return str(self.article.article_name)




