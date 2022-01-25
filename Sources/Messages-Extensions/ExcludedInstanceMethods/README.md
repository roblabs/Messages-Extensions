# Instances Methods

This Swift Package includes *instance methods* that `override` methods for a [`MSMessagesAppViewController`](https://developer.apple.com/documentation/messages/msmessagesappviewcontroller).

The intention is to document and enumerate methods that you can use for life cycle and event handling for your iMessage extension App.  Copy and modify from this Swift Package to your project and be sure to commit.

These files are excluded from compiling via the Swift Package thanks to the [`exclude`](https://developer.apple.com/documentation/swift_packages/target/2880334-exclude) *instance property*.  When you `override` these methods, you lose the Quick Help feature.  The `super.()` method will preserve Quick Help.  Our hope is that adopters will review what *instance methods* are available to include in features for their product.
