import Foundation
class Review : PFObject, PFSubclassing
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
        return "Review"
    }



    @NSManaged var owner : User
    @NSManaged var reviewBody : String
    @NSManaged var rating : Int


    
    
    
    
    
}