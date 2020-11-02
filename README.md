# fn-cob

This is an example for using the fnproject hotwrap functionality to run arbitrary code as serverless function. In this case hello world is implemented in COBOL.

To build and run fnproject CLI can be used:

`fn build`
`fn deploy -app <YOUR_FN_APP>`

`fn invoke <YOUR_FN_APP> hello-cob`
`echo "Max" | fn invoke <YOUR_FN_APP> hello-cob`
