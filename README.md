# fn-cob

This is an example for using the fnproject hotwrap functionality to run arbitrary code as serverless function. In this case hello world is implemented in COBOL.

Using fnproject CLI you can build and deploy the function:

`fn build`

`fn deploy -app <YOUR_FN_APP>`

Then you can try this fancy function:

`fn invoke <YOUR_FN_APP> hello-cob`

`echo "Max" | fn invoke <YOUR_FN_APP> hello-cob`
