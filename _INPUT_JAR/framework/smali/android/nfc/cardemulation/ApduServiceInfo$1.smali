.class final Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 21
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 674
    sget-object v1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 675
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_78

    const/4 v3, 0x1

    .line 677
    .local v3, "onHost":Z
    :goto_15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 679
    .local v17, "numStaticGroups":I
    if-lez v17, :cond_27

    .line 680
    sget-object v1, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 682
    :cond_27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v6, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 684
    .local v16, "numDynamicGroups":I
    if-lez v16, :cond_39

    .line 685
    sget-object v1, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 687
    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7a

    const/4 v7, 0x1

    .line 688
    .local v7, "requiresUnlock":Z
    :goto_40
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 689
    .local v8, "bannerResource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 691
    .local v10, "uid":I
    sget-object v1, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    .line 694
    .local v11, "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 695
    .local v15, "existBanner":I
    const/4 v9, 0x0

    .line 696
    .local v9, "drawableBanner":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-ne v15, v1, :cond_72

    .line 698
    :try_start_5a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 699
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_7c

    .line 700
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v13, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_71
    .catch Landroid/os/BadParcelableException; {:try_start_5a .. :try_end_71} :catch_86

    .end local v9    # "drawableBanner":Landroid/graphics/drawable/Drawable;
    .local v13, "drawableBanner":Landroid/graphics/drawable/Drawable;
    move-object v9, v13

    .line 709
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "drawableBanner":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "drawableBanner":Landroid/graphics/drawable/Drawable;
    :cond_72
    :goto_72
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct/range {v1 .. v11}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILandroid/graphics/drawable/Drawable;ILandroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;)V

    return-object v1

    .line 676
    .end local v3    # "onHost":Z
    .end local v5    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v6    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v7    # "requiresUnlock":Z
    .end local v8    # "bannerResource":I
    .end local v9    # "drawableBanner":Landroid/graphics/drawable/Drawable;
    .end local v10    # "uid":I
    .end local v11    # "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
    .end local v15    # "existBanner":I
    .end local v16    # "numDynamicGroups":I
    .end local v17    # "numStaticGroups":I
    :cond_78
    const/4 v3, 0x0

    goto :goto_15

    .line 687
    .restart local v3    # "onHost":Z
    .restart local v5    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v6    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v16    # "numDynamicGroups":I
    .restart local v17    # "numStaticGroups":I
    :cond_7a
    const/4 v7, 0x0

    goto :goto_40

    .line 702
    .restart local v7    # "requiresUnlock":Z
    .restart local v8    # "bannerResource":I
    .restart local v9    # "drawableBanner":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "uid":I
    .restart local v11    # "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "existBanner":I
    :cond_7c
    :try_start_7c
    const-string v1, "ApduServiceInfo"

    const-string v18, "bitmap is null"

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Landroid/os/BadParcelableException; {:try_start_7c .. :try_end_85} :catch_86

    goto :goto_72

    .line 704
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :catch_86
    move-exception v14

    .line 705
    .local v14, "e":Landroid/os/BadParcelableException;
    const-string v1, "ApduServiceInfo"

    const-string v18, "BadParcelableException, bitmap is null"

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 715
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method
