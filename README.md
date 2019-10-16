# Terraform  - BigQuery datasets
This project is an implementation of [Terraform BigQuery Datasets](https://www.terraform.io/docs/providers/google/r/bigquery_dataset.html)

Layout

```
main.tf            --> The main terraform files, this includes the module listed below
backend.tf         --> Contains the backend configuration, which is a bucket in Google Storage
vars.tf            --> Variable definition
terraform.tfvars   --> Example how to set variables
modules/
    dataset/  
        --> This module creates a set of datasets in BigQuery by using default
            access permissions, or user defined access
```

## Credential required
Before you begin, you need to define credentials for the communication with GCP
```
export GOOGLE_APPLICATION_CREDENTIALS=/home/user/my_service_account.json
```
For more info, check: https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform


## Variables
<table>
<tr>
<td> Variable name </td><td> Type </td><td> Description </td><td> Default value </td></tr>
<tr>
<td> project </td><td> String </td><td> The ID of the project the resource belongs </td><td> </td></tr>
</tr><tr>
<td> region </td><td> String </td><td> Region </td><td> </td></tr>
</tr><tr>
<td> datasets </td><td> List   </td><td> A list of datasets to be created </td><td> </td></tr>
</tr><tr>
<td> dataset_access  </td><td> List   </td><td> A list of access maps e.g.
<pre lang="yaml">
{
   role = "OWNER"
   user_by_email = "test@example.com"
},
{
  role = "READER"
  domain = "fofofo.com"
}
</pre>
</td>
<td></td>
</tr>
</tr>
</table>

## Building
### Initalization

```
$ terraform init
```

### Planning

Terraform allows you to "Plan", which allows you to see what it would change
without actually making any changes.

```
$ terraform plan 
```

### Applying

```
$ terraform apply
```

### Modifying

If you want to delete one or more datasets, then edit the `terraform.tfvars` file and run again `terraform apply`
```
$ terraform apply
```

### Destroying
```
$ terraform destroy
```

# Author

Georgios Kasapoglou

https://github.com/GeKasap

# License

Copyright 2019 Georgios Kasapoglou

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
