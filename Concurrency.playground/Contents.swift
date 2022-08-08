import UIKit

// Main Thread -> Thread where user interaction takes place (button click , scrolling etc)
// Background Thread -> Thread where heavy operations takes place like api calling , Database calls
// Queue -> DS which works on first in forst out pattern also called serial queue
// Makes sure one task is 100% comlete before starting next task
// Used when order of task execution matters

// Concurrency -> Multithreading ie multiple tasks at a time like coding , listening to music , drining tea at the same time

// Concurrent Queue -> Unpredictable order of execution
// Faster because  theres no waiting and all tasks run at same time
// Task B does not have to wait for Task A to complete
// Used when order of execution does not matters


