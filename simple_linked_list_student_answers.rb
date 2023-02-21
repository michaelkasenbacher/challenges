# Class: `SimpleLinkedList`

# - define constructor which does not take an argument.
#   - constructor initializes the ivar @head to nil 
# - define attr_reader for @head.
# - define `#push` instance method - it takes an argument. Needs to:
#   - check if current @head is nil:
#     - If nil: Assigns the @head to a new Element object with a @datum of given argument. 
#     - If not nil: Assigns the @head to a new Element with @datum of given argument and @next of current @head.
#     returns @head.
# - define `#pop` method. Does not take an arg, does the following:
#   - keeps track of the current @head to be removed. 
#   - assigns the new @head to the current Element's `next` value.
#   - returns the @datum of the old_head.

# - define instance method `#peek`. It needs to do the following:
#   - return the @datum of the @head element object. If no @head element exists, returns nil.

# - define class method `#from_a`. Receives an argument in the form of an array, it needs to:
#   - instantiate a new SimpleLinkedList object. -> new_list
#   - if argument is nil, returns new_list
#   - iterate through each element in the array given in REVERSE ORDER and:
#     - using the instance method `push`, `push` es each element into the new_list instantiated in step 1.
#   - returns the new_list

# - define instance method `#size`:
#   - returns the @list size in integer form.
#   - initialize local method variable -> size = 0
#   - sets a local current_element to the value of @head.
#   - while the current_element is not nil 
#     - adds + 1 to size
#     - sets current_element to the next value
#   - Returns size.

# - define instance method `to_a`:
#   - initialize a new_array.
#   - initialize local current_element to @head
#   - while current_element is not nil:
#     - appends the datum of current element to new_array
#     - sets the current element to the next value
#   returns new_array.

# - define instance method `reverse`:
#   - returns a new SimpleLinkedList from an array, which is the current list to array in reverse.

# - define instance method `#empty?`
#   - returns true if the @list does not contain any `element` objects at the head of the @list.
