hs.graphicsDir = 'highslide/graphics/';
hs.align = 'center';
hs.transitions = ['expand', 'crossfade'];
hs.outlineType = 'rounded-white';
hs.fadeInOut = true;
hs.numberPosition = 'caption';
hs.dimmingOpacity = 0.75;

if (hs.addSlideshow) hs.addSlideshow({
	interval: 5000,
	repeat: false,
	useControls: true,
	fixedControls: 'fit',
	overlayOptions: {
		opacity: .75,
		position: 'bottom center',
		hideOnMouseOut: true
	}
});