# Generated by Django 2.2.3 on 2019-08-10 09:20

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('datasearch', '0003_auto_20190810_1710'),
    ]

    operations = [
        migrations.AlterField(
            model_name='celltype',
            name='parent',
            field=models.ForeignKey(blank=True, default=9, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='datasearch.CellType'),
        ),
        migrations.AlterField(
            model_name='celltype',
            name='type',
            field=models.CharField(max_length=100, unique=True),
        ),
    ]
