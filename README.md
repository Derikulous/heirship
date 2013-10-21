# Heirship: Add Heirs and assets

# Description:
This app was designed by Derik Strattan, follwing an outline of tutorial here [Kynatro](http://kynatro.com/blog/2012/12/16/building-a-has_many-through-model-relationship-and-form-with-cocoon/)
Add liabilities of items, properties, and money, then add the name of the heir and the date that the heir will receive their inheritance.

## Model associations
The model associations use liabilities and the heir through a joining model named Heirship. Heirship *belongs_to* liabilities and heirs. The joined models **has_many :through** associations to the heirship model.

**Built with the following gems**

[Twtter-bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass) for better visualization
[Cocoon](https://github.com/nathanvda/cocoon) for easier nesting of views
