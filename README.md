<h1>AWS-Paolo</h1>
<h2>Practica AWS Paolo Scotto Di Mase</h2>

En este proyecto creé un sitio web estático alojado en un Bucket S3 en la región de Irlanda utilizando Terraform. Implementé dos soluciones diferentes: una en el repositorio ***Terraform-Registry-Module***, usando un módulo del registro de Terraform y otra en
el repositorio ***My-Root-Child-Modules*** con una implementación propia, usando un root y un child module para maximizar la flexibilidad y reutilización del código. En el ***main.tf*** del child module he creado 4 recursos:
1. ***aws_s3_bucket*** para la creación del bucket S3. 
2. ***aws_s3_bucket_acl*** que establece la configuración del control de acceso (ACL) para el bucket S3. 
3. ***aws_s3_bucket_versioning*** que establece la configuración del versionamiento para el bucket S3.
4. ***aws_s3_bucket_website_configuration*** que establece la configuración del sitio web estático para el bucket S3, incluyendo el
   documento de índice y el documento de error.

<img width="1789" alt="Screenshot 2023-03-12 at 15 51 43" src="https://user-images.githubusercontent.com/118285718/224552552-96083802-92e1-4ce8-aa34-df320d052a6a.png" title="index.html">

<img width="1792" alt="Screenshot 2023-03-12 at 16 00 55" src="https://user-images.githubusercontent.com/118285718/224553095-86809bbf-ad48-4add-b7bd-5a2a73c47113.png" title="error.html">
