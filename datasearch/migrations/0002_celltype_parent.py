# Generated by Django 2.2.3 on 2019-08-09 10:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('datasearch', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='celltype',
            name='parent',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='datasearch.CellType'),
        ),
    ]