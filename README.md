# Seasonal app Icon
Change and alternate between other AppIcon's programmatically.



## Steps:
**1.** Open the Assets file then add a new AppIcon for each desired design, give it a meaningfull name: 

![Assets File, add AppIcon.](Screenshots/1.png)



**2.** Call UIApplication.shared.setAlternateIconName() when the needed action is fired:
```
UIApplication.shared.setAlternateIconName("AppIcon-Summer")
```


**Result** 

![Fire the action.](Screenshots/2.png)
![AppIcon has changed.](Screenshots/3.png)
