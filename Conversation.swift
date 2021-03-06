import Foundation
@objc class Conversation : PFObject, PFSubclassing
{
    override class func initialize()
    {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken)
            {
                self.registerSubclass()
        }
    }

    class func parseClassName() -> String
    {
        return "Conversation"
    }


    @NSManaged var users : [User]


    @NSManaged var course : Course
}