# App Development with Swift

![swift badge](https://img.shields.io/badge/swift-5-orange.svg) ![progress bar](https://img.shields.io/badge/progress-72%25-ff69b4.svg)

Labs and guided projects following Apple's [App Development with Swift](https://itunes.apple.com/za/book/app-development-with-swift/id1219117996?mt=11) book.

## Projects
### 1 Light
Single screen app that changes the screen from black to white whenever the user taps a button.

<table>
  <tr>
    <th>🦅 Swift Lessons</th>
    <th> Learning outcomes</th>
  </tr>
  <tr>
    <td>Introduction to Swift and Playgrounds</td>
    <td>
        <ul>
            <li>Learned about the features that make Swift a "safe" language such as <b>type safety</b>, <b>type inference</b>, <b>error handling</b> and <b>optionals</b>.</li>
            <li>Used playgrounds to run Swift code.</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Constants, Variables and Data Types</td>
    <td>
        <ul>
            <li>Learned why most variables should be declared as constants.</li>
            <li>Demonstrated how to specify the type for a variable or constant.</li>
            <li>Showed how to format integer and float values for easier reading.</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Operators</td>
    <td>
      <ul>
        <li>Did basic mathematic operations using <code>+</code>, <code>-</code>, <code>×</code>, <code>÷</code> and most notably the remainder/modulo operator <code>%</code>.</li>
        <li>Used <b>compound assignment operators</b> such as <code>+=</code>, <code>-=</code>, <code>*=</code> and <code>/=</code>.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Control Flow</td>
    <td>
      <ul>
        <li>Combined <b>boolean expressions</b> with <b>logical operators</b> to convey some logic.</li>
        <li>Used <b><code>switch</code> statements</b> to choose which code gets executed depending on the value of a single variable.</li>
        <li>Learned how to use a <b>ternary operator</b> to conditionally assign different values to a constant or variable.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>🔨 SDK Lessons</th>
    <th> Learning outcomes</th>
  </tr>
  <tr>
    <td>Xcode</td>
    <td>
      <ul>
        <li>Learned how to use the <b>project navigator</b>, <b>debug area</b>, <b>assistant editor</b> and <b>version editor</b>.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Building, running and debugging an app</td>
    <td>
      <ul>
        <li>Learned how to run apps using Simulator within the Xcode environment and with a physical device.</li>
        <li>Performed basic debugging using breakpoints.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Documentation</td>
    <td>
      <ul>
        <li>Used the documentation browser to look at overviews, symbol descriptions and discussions.</li>
        <li>Used resources on the Apple Developer website to find sample code and framework guides.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Interface Builder Basics</td>
    <td>
      <ul>
        <li>Saw the purpose of the <b>initial view controller</b> in a storyboard.</li>
        <li>Described the role of the <b>document outline</b>.</li>
        <li>Demonstrated how to create an <code>IBOutlet</code> and an <code>IBAction</code> using the <b>assistant editor</b>.</li>
        <li>Explained the differences between the <b>identity inspector</b>, <b>attributes inspector</b>, <b>size inspector</b> and the <b>object library</b> to build basic user interfaces.</li>
      </ul>
    </td>
  </tr>
</table>

### 2 Apple Pie
Word guessing game for the iPad in the style of the classic Hangman.

<table>
  <tr>
    <th>🦅 Swift Lessons</th>
    <th> Learning outcomes</th>
  </tr>
  <tr>
    <td>Strings</td>
    <td>
      <ul>
        <li>Did string comparisons.</li>
        <li>Used <b>string interpolation</b> to create a complex variable string.</li>
        <li>Used numerous methods included in Swift as part of the string class such as <code>uppercase()</code> and <code>lowercase()</code>.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Functions</td>
    <td>
      <ul>
        <li>Built functions with and without return types.</li>
        <li>Constructed functions with multiple named arguments and default values.</li>
        <li>Demonstrated how to specify <b>external names</b> for function parameters.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Structures</td>
    <td>
      <ul>
        <li>Learned about the role of <b>structures</b> in Swift and how to create one with multiple <b>instance methods</b>.</li>
        <li>Learned the difference between an <b>instance</b> and a <b>type</b>.</li>
        <li>Demonstrated how to create custom initialisers for a structure.</li>
        <li>Showed how create a <b>computed property</b>.</li>
        <li>Created a structure with a <b>type method</b>.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Classes and Inheritance</td>
    <td>
      <ul>
        <li>Outlined the difference between a structure and a class.</li>
        <li>Learned the concept and importance of <b>inheritance</b>.</li>
        <li>Used classes to manage complex state in an application</li>
        <li>Demonstrated how to call a <b>superclass</b>'s properties or methods.</li>
        <li>Showed how to <b>override</b> methods from a superclass.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Collections</td>
    <td>
      <ul>
        <li>Described the difference between <code>let</code> and <code>var</code> when using collection types.</li>
        <li>Learned how to add and remove values from <b>arrays</b> and <b>dictionaries</b>.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Loops</td>
    <td>
      <ul>
        <li>Demonstrated how to write a <code>for</code> loop to iterate over a <b>range</b> or collection.</li>
        <li>Showed how to write  a <code>while</code> loop.</li>
      </ul>    
    </td>
  </tr>
  <tr>
    <th>🔨 SDK Lessons</th>
    <th> Learning outcomes</th>
  </tr>
  <tr>
    <td>Introduction to UIKit</td>
    <td>
      <ul>
        <li>Learned about the standard controls included in the iOS SDK made available in a framework known as <code>UIKit</code>.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Displaying Data</td>
    <td>
      <ul>
        <li>Showed how to configure views using Interface Builder.</li>
        <li>Demonstrated how to set a <b>label</b>'s text, font, colour and other properties.</li>
        <li>Learned how to set the <b>content mode</b> for an image view.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Controls in Action</td>
    <td>
      <ul>
        <li>Learned how to use a <b>button</b>, <b>switch</b>,  and <b>slider</b> to execute code.</li>
        <li>Learned how to access the value of a switch, slider and <b>text field</b>.</li>
        <li>Learned how to respond to user interactions with gesture recognisers.</li>
        <li>Learned how to connect <b>controls</b> to <b>actions</b> programmatically.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>Auto Layout and Stack Views</td>
    <td>
      <ul>
        <li>Described the <b>Auto Layout</b> system for constraining views as they relate to other views.</li>
        <li>Demostrated how to add constraints to a view.</li>
        <li>Showed how to use <b>stack view</b> to help manage constraints.</li>
      </ul>
    </td>
  </tr>
</table>
