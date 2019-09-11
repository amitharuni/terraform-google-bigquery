variable "dataset_id" ***REMOVED***
  description = "A Unique ID, without the project name. Only letters (a-z,A-Z), numbers (0-9) and underscres (_) are allowed"
  type        = "list"
  default     = []
***REMOVED***

variable "default_table_expiration_ms" ***REMOVED***
  description = "The default lifetime of all tables in the dataset, in milliseconds."
  type        = "string"
  default     = null
***REMOVED***

variable "description" ***REMOVED***
  description = "A user friendly description"
  type        = "string"
  default     = ""
***REMOVED***

variable "friendly_name" ***REMOVED***
  description = "A user friednly name"
  type        = "string"
  default     = ""
***REMOVED***

variable "labels" ***REMOVED***
  description = "Labels for this dataset"
  type        = "map"
  default     = ***REMOVED******REMOVED***
***REMOVED***

variable "location" ***REMOVED***
  description = "The geographic location of this dataset"
  type        = "string"
  default     = "EU"
***REMOVED***

variable "project" ***REMOVED***
  description = "The ID of the project"
  type        = "string"
  default     = ""
***REMOVED***

variable "delete_contents_on_destroy" ***REMOVED***
  description = "If set to true, delete all the tables in the dataset when destroying resource"
  type = "string"
  default = 0
***REMOVED***

variable "access" ***REMOVED***
  description = "An array of objects that define dataset access for one or more entities. Structure is documented below."
  type = "list"
  default = []
***REMOVED***

