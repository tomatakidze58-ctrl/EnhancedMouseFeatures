# EnhancendMouseFeatures compatibility API

This fork retains the original Mouse Tweaks Java package, annotation names, and interface methods for existing integrations. The upstream API documentation follows.

## `IMTModGuiContainer3`

If your container isn't based on `AbstractContainerScreen`, or if you want to improve compatibility (marking certain
slots as ignored by the mod as an example), take a look at this interface. Implement it on
your `AbstractContainerScreen`-based container.

## `@MouseTweaksIgnore`

Putting this annotation on your GuiContainer is a quick and easy way to disable Mouse Tweaks on the container without
having to implement the whole API interface.

## `@MouseTweaksDisableWheelTweak`

Putting this annotation on your GuiContainer is a quick and easy way to disable the wheel tweak on the container without
having to implement the whole API interface.
