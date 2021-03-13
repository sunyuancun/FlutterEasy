/// Android Language

// 1.Activity 的 四 种 启 动 模 式
    // 1. standard  
    //     默认启动模式，每次激活Activity时都会创建Activity，并放入任务栈中，永远不会调用onNewIntent()。  
    // 2. singleTop  
    //     如果在任务的栈顶正好存在该Activity的实例， 就重用该实例，并调用其onNewIntent()，否者就会创建新的实例并放入栈顶(即使栈中已经存在该Activity实例，只要不在栈顶，都会创建实例，而不会调用onNewIntent()，此时就跟standard模式一样)。  
    // 3. singleTask  
    //     如果在栈中已经有该Activity的实例，就重用该实例(会调用实例的onNewIntent())。重用时，会让该实例回到栈顶，因此在它上面的实例将会被移除栈。如果栈中不存在该实例，将会创建新的实例放入栈中（此时不会调用onNewIntent()）。   
    // 4. singleInstance  
    //     在一个新栈中创建该Activity实例，并让多个应用共享改栈中的该Activity实例。一旦改模式的Activity的实例存在于某个栈中，任何应用再激活改Activity时都会重用该栈中的实例，其效果相当于多个应用程序共享一个应用，不管谁激活该Activity都会进入同一个应用中。

//2.Handler Android消息机制 
//  Android消息机制  不允许子线程 更新UI ，只能 通过主线程更新UI 。可以通过Handler，在子线程中，进行耗时操作，执行完操作后，发送消息，通知主线程更新 UI。
//  Looper ：负责关联线程以及消息的分发在该线程下**从 MessageQueue 获取 Message，分发给 Handler ；
//  MessageQueue ：是个队列，负责消息的存储与管理，负责管理由 Handler 发送过 来的 Message ；
//  Handler : 负责发送并处理消息，

//3.事件分发机制
  // 1. onTouch 和 onTouchEvent 有什么区别，又该如何使用？
  // 从源码中可以看出，这两个方法都是在 View 的 dispatchTouchEvent 中调用的， onTouch 优先于 onTouchEvent 执行。如果在 onTouch 方法中通过返回 true 将事件消费掉，onTouchEvent 将不会再执行。
  //onTouch执行的前提是： 第一 mOnTouchListener 的值不能为空，第二当前点击的控件必须是 enable 的

//2. dispatchTouchEvent()  onTouchEvent()  onInterceptTouchEvent()  

//4.自定义控件