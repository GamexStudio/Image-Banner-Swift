# ASCustomBannerView

This is a banner with similar style to the App Store. It has auto-slide to left every 5 seconds and manual-slide to both sides.
It can be used quickly only by passing an array of images.

Lenguage: Swift 3

Author: Alan Roldan


## Example:

###Portrait
<img src="GIF_ASCustomBannerView.gif" width="260">

###Landscape
<img src="GIF2_ASCustomBannerView.gif" width="400">



## How to use?
(example swift3)

Create a variable of type BannerView:
``` swift
@IBOutlet weak var baner: BannerView!
```
Import images and create a array of images:
```swift
//at this step, you download images from a URL or local directory
let imageName = ["img1","img2","img3","img4"]

//you create array of type UIImage
var arrayImages = [UIImage]()
for i in 0 ... imageName.count-1
{
    arrayImages.append(UIImage(named: imageName[i])!)
}
```
Get screen size width:
```swift
let widthScreen = CGFloat()
widthScreen = UIScreen.main.bounds.width
```
Instantiate class BannerView:
```swift
baner.createBanner(imagesArray: arrayImages, widthScreen: widthScreen)
```
You can also recharge the view items:
```swift
baner.refreshBanner(imagesArray: arrayImages)
```



<img src="http://www.floridauniversitaria.es/es-ES/noticias/PublishingImages/aviso_importante.png" width="30"> Images should be for proper operation of 720x300






