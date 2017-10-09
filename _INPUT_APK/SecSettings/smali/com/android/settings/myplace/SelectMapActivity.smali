.class public Lcom/android/settings/myplace/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCloseIcon:Landroid/widget/ImageButton;

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mIsTabletConfig:Z

.field private mLatitude:I

.field private mLocation:Ljava/lang/String;

.field private mLocationDisabledDialog:Landroid/app/AlertDialog;

.field private mLongitude:I

.field private mMapMode:I

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

.field private mResearch:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchIcon:Landroid/widget/ImageView;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSearchViewContainer:Landroid/widget/FrameLayout;

.field private mSnippet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 80
    const-string v0, "SelectMapActivity"

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    .line 102
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    .line 103
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    .line 107
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 108
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 109
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    .line 464
    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$10;

    invoke-direct {v0, p0}, Lcom/android/settings/myplace/SelectMapActivity$10;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 694
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/myplace/SelectMapActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # D

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/SelectMapActivity;IIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/myplace/SelectMapActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/myplace/SelectMapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->showLocationDisabledDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    return-void
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 7
    .param p1, "lat"    # I
    .param p2, "lon"    # I
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 536
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 537
    .local v1, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 538
    .local v0, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/android/settings/myplace/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 540
    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 541
    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 542
    iput-object p3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 545
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 546
    .local v2, "point":Lcom/google/android/maps/GeoPoint;
    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v4, v6, [Lcom/google/android/maps/GeoPoint;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 548
    return v6
.end method

.method private convToDouble(I)D
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 523
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 519
    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 20
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 423
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 424
    :cond_0
    const/16 v17, 0x0

    .line 461
    :goto_0
    return v17

    .line 427
    :cond_1
    new-instance v6, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v6, "geo":Landroid/location/Geocoder;
    const v15, 0x55d4a80

    .local v15, "minLat":I
    const v13, -0x55d4a80

    .line 429
    .local v13, "maxLat":I
    const v16, 0xaba9500

    .local v16, "minLon":I
    const v14, -0xaba9500

    .line 432
    .local v14, "maxLon":I
    const/16 v17, 0x5

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 434
    .local v10, "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v12

    .line 437
    .local v12, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 438
    .local v8, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v8}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 440
    const/4 v4, 0x0

    .line 441
    .local v4, "addr":Landroid/location/Address;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 442
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "addr":Landroid/location/Address;
    check-cast v4, Landroid/location/Address;

    .line 443
    .restart local v4    # "addr":Landroid/location/Address;
    invoke-virtual {v4}, Landroid/location/Address;->getLatitude()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v9

    .line 444
    .local v9, "lat":I
    invoke-virtual {v4}, Landroid/location/Address;->getLongitude()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v11

    .line 445
    .local v11, "lon":I
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v11, v1}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 446
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 447
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 448
    move/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 449
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 441
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 451
    .end local v9    # "lat":I
    .end local v11    # "lon":I
    :cond_2
    if-eqz v4, :cond_3

    .line 452
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v13, v1, v14}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(IIII)Z

    .line 461
    .end local v4    # "addr":Landroid/location/Address;
    .end local v7    # "i":I
    .end local v8    # "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    .end local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v12    # "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 455
    .restart local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a19f2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 458
    .end local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v5

    .line 459
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .param p1, "latitude"    # I
    .param p2, "longitude"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "snippet"    # Ljava/lang/String;

    .prologue
    .line 552
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 553
    .local v1, "point":Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .local v0, "overlay":Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 555
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 526
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 528
    .local v2, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 529
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 530
    .local v1, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(II)Z
    .locals 5
    .param p1, "lat"    # I
    .param p2, "lon"    # I

    .prologue
    const/4 v4, 0x1

    .line 568
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 569
    .local v0, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 570
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 571
    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v2, v4, [Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 572
    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 573
    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 574
    return v4
.end method

.method private moveToMarker(IIII)Z
    .locals 7
    .param p1, "minLat"    # I
    .param p2, "maxLat"    # I
    .param p3, "minLon"    # I
    .param p4, "maxLon"    # I

    .prologue
    const/4 v6, 0x1

    .line 578
    sub-int v0, p2, p1

    .line 579
    .local v0, "lat_span":I
    sub-int v1, p4, p3

    .line 580
    .local v1, "lon_span":I
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 581
    .local v2, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 582
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 583
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 584
    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v4, v6, [Lcom/google/android/maps/GeoPoint;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 585
    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 586
    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 587
    return v6
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const/4 v3, 0x1

    .line 559
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 561
    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 562
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 563
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 564
    return v3
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 402
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    if-eqz v2, :cond_0

    .line 412
    :cond_2
    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 413
    iput-boolean v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    .line 416
    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 418
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 419
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setMyLocationOverlay()V
    .locals 4

    .prologue
    .line 833
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v2, :cond_0

    .line 834
    new-instance v2, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v2, p0, v3}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 836
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 839
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 840
    .local v1, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    if-eqz v1, :cond_1

    .line 841
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 842
    .local v0, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 847
    .end local v0    # "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$11;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$11;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MyLocationOverlay;->runOnFirstFix(Ljava/lang/Runnable;)Z

    .line 861
    return-void
.end method

.method private showLocationDisabledDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 935
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 937
    iput-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 940
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a19f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a19f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0ad5

    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$12;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/SelectMapActivity$12;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01d1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 952
    return-void
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 13
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 657
    const-string v12, ""

    .line 658
    .local v12, "location":Ljava/lang/String;
    const/4 v9, 0x0

    .line 661
    .local v9, "data":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fa_FA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa_IR"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 668
    :cond_0
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 669
    .local v1, "geoCoder":Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 671
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 672
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 674
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 675
    .local v8, "addressLines":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-gt v11, v8, :cond_3

    .line 676
    invoke-virtual {v0, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 677
    .local v7, "addressLine":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 678
    if-nez v11, :cond_2

    .line 679
    move-object v12, v7

    .line 675
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 681
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 687
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "geoCoder":Landroid/location/Geocoder;
    .end local v7    # "addressLine":Ljava/lang/String;
    .end local v8    # "addressLines":I
    .end local v11    # "i":I
    :catch_0
    move-exception v10

    .line 688
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3
    return-object v12
.end method


# virtual methods
.method protected captureMap()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 591
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4, v3}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 592
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 594
    .local v0, "saved":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 595
    .local v1, "x":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 596
    .local v2, "y":I
    if-gez v2, :cond_0

    .line 597
    const/4 v2, 0x0

    .line 603
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    .line 604
    :cond_1
    const/4 v3, 0x0

    .line 606
    :goto_0
    return v3

    .line 605
    :cond_2
    iget v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected doFinish()V
    .locals 5

    .prologue
    .line 610
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 611
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 614
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "latitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    const-string v2, "longitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const-string v2, "location"

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 627
    const-string v2, "map"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 630
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/myplace/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    .line 632
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 903
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->invalidateOptionsMenu()V

    .line 905
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    :try_start_0
    const-string v4, "android.os.AsyncTask"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v6, 0x7f0a097d

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "location"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 143
    const-string v4, "mode"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    .line 144
    const-string v4, "map_latitude"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 145
    const-string v4, "map_longtitude"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 146
    const v4, 0x7f0401f0

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->setContentView(I)V

    .line 148
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    .line 150
    new-instance v4, Landroid/location/Geocoder;

    invoke-direct {v4, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 152
    const v4, 0x7f10046c

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/MapView;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 153
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4, v7}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 155
    const v4, 0x7f100466

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    .line 156
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 157
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$1;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    const v4, 0x7f100468

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    .line 172
    const v4, 0x7f100469

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    .line 173
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$2;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v4, 0x7f100467

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;

    .line 199
    const v4, 0x7f1003df

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 200
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const v6, 0x10000003

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 201
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$3;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$3;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v4, v6, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$4;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 219
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$5;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v4, "       "

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 248
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    .line 249
    .local v2, "mSearchHint":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 252
    :cond_0
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$6;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$6;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 268
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v6, "My_Location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 270
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x1060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 274
    :goto_1
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 276
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    if-lez v1, :cond_5

    .end local v1    # "length":I
    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 279
    :cond_1
    const v4, 0x7f10046a

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 282
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/myplace/SelectMapActivity$7;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/SelectMapActivity$7;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v4, 0x7f10046b

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    .line 294
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/myplace/SelectMapActivity$8;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/SelectMapActivity$8;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    .line 323
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 324
    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 327
    :cond_2
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v5, "My_Location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 328
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    .line 330
    :cond_3
    return-void

    .line 272
    :cond_4
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .restart local v1    # "length":I
    :cond_5
    move v1, v5

    .line 276
    goto :goto_2

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "length":I
    .end local v2    # "mSearchHint":Ljava/lang/CharSequence;
    .end local v3    # "ssb":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 879
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 881
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 883
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 894
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    if-nez v1, :cond_0

    .line 895
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 896
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 898
    :cond_0
    return v4

    .line 885
    :cond_1
    const v1, 0x7f0a01d1

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 887
    const v1, 0x7f0a123f

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 890
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02011a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 891
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02011e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 392
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 398
    :goto_0
    return v0

    .line 394
    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 909
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 930
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 911
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    .line 915
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    .line 919
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->doFinish()V

    goto :goto_0

    .line 923
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 924
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 925
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 927
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    .line 909
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
        0x7f10010b -> :sswitch_2
        0x7f10010c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 370
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 384
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 385
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 386
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 387
    const-string v0, "snippet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 388
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 334
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 336
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->initMarker()Z

    .line 338
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    if-eqz v0, :cond_3

    .line 339
    :cond_0
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    const-string v2, "here"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 340
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 357
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 358
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 359
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 361
    :cond_2
    return-void

    .line 342
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$9;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$9;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v1, "My_Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v0, :cond_4

    .line 351
    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 353
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 375
    const-string v0, "location"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "latitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    const-string v0, "longitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    const-string v0, "snippet"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method
