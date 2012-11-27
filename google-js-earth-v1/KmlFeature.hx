/*
Created by Justin Donaldson <jdonaldson@gmail.com> on Fri Jul 16 16:39:40 -0700 2010
Based on original Google JS API documentation
*/

import js.Dom;

extern class KmlFeature  extends KmlObject{
/*
User-defined text displayed in the 3D viewer as the label for the object (for example, for a Placemark).
*/
public function getName() : String;

/*
User-defined text displayed in the 3D viewer as the label for the object (for example, for a Placemark).
*/
public function setName( name : String ) : Void;

/*
Specifies whether the feature is drawn in the 3D viewer. In order for a feature to be visible, the visibility of all its ancestors must also be set to true. In the Google Earth List View, each feature has a checkbox that allows the user to control visibility of the feature.
*/
public function getVisibility() : Bool;

/*
Specifies whether the feature is drawn in the 3D viewer. In order for a feature to be visible, the visibility of all its ancestors must also be set to true. In the Google Earth List View, each feature has a checkbox that allows the user to control visibility of the feature.
*/
public function setVisibility( visibility : Bool ) : Void;

/*
Default state of left panel.
*/
public function getOpen() : Bool;

/*
Default state of left panel.
*/
public function setOpen( open : Bool ) : Void;

/*
Specifies a value representing an unstructured address written as a standard street, city, state address, and/or as a postal code.
*/
public function getAddress() : String;

/*
Specifies a value representing an unstructured address written as a standard street, city, state address, and/or as a postal code.
*/
public function setAddress( address : String ) : Void;

/*
Specifies a short description of the feature.
*/
public function getSnippet() : String;

/*
Specifies a short description of the feature.
*/
public function setSnippet( snippet : String ) : Void;

/*
User-supplied text that appears in the description balloon.
*/
public function getDescription() : String;

/*
User-supplied text that appears in the description balloon.
*/
public function setDescription( description : String ) : Void;

/*
Stores either the lookAt or camera view.
*/
public function getAbstractView() : KmlAbstractView;

/*
Stores either the lookAt or camera view.
*/
public function setAbstractView( abstractView : KmlAbstractView ) : Void;

/*
URI of a Style or StyleMap defined in a Document. It refers to a Plug-in intitiated object.
*/
public function getStyleUrl() : String;

/*
URI of a Style or StyleMap defined in a Document. It refers to a Plug-in intitiated object.
*/
public function setStyleUrl( styleUrl : String ) : Void;

/*
The style based on the current mode of the Placemark.
*/
public function getStyleSelector() : KmlStyleSelector;

/*
The style based on the current mode of the Placemark.
*/
public function setStyleSelector( styleSelector : KmlStyleSelector ) : Void;

/*
Specifies region objects and their properties. A region contains a bounding box (LatLonAltBox) that describes an area of interest defined by geographic coordinates and altitudes.
*/
public function getRegion() : KmlRegion;

/*
Specifies region objects and their properties. A region contains a bounding box (LatLonAltBox) that describes an area of interest defined by geographic coordinates and altitudes.
*/
public function setRegion( region : KmlRegion ) : Void;

/*
Returns the KML for a feature.
*/
public function getKml() : String;

/*
Returns previous sibling node within the container.
*/
public function getPreviousSibling() : KmlFeature;

/*
Returns the next sibling node within the container.
*/
public function getNextSibling() : KmlFeature;

/*
Returns the computed style of a feature, merging any inline styles with styles imported from setHref() or a StyleUrl. Note:Modifying the returned KmlStyle object is undefined and not recommended.
*/
public function getComputedStyle() : KmlStyle;

/*
Experimental Feature — this is an experimental feature and can change (or even be removed) at any time.
The opacity of a feature, ranging from 0 (completely transparent) to 1 (complete opaque). The opacity of a folder or document will influence the opacity of child features. Thus, if a folder has an opacity of 0.5 and a child ground overlay in the folder also has an opacity of 0.5, the overlay will be drawn with an opacity of 0.25.
*/
public function getOpacity() : Float;

/*
Experimental Feature — this is an experimental feature and can change (or even be removed) at any time.
The opacity of a feature, ranging from 0 (completely transparent) to 1 (complete opaque). The opacity of a folder or document will influence the opacity of child features. Thus, if a folder has an opacity of 0.5 and a child ground overlay in the folder also has an opacity of 0.5, the overlay will be drawn with an opacity of 0.25.
*/
public function setOpacity( opacity : Float ) : Void;

}