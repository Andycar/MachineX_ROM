.class public Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
.super Ljava/lang/Object;
.source "SlookAirButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirButtonItem"
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;

.field private mDescription:Ljava/lang/String;

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mSubDescription:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mView:Landroid/view/View;

    .line 231
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 235
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mDescription:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mSubDescription:Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mData:Ljava/lang/Object;

    .line 275
    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    if-nez p3, :cond_1c

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the Drawable, String and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "subDescription"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mView:Landroid/view/View;

    .line 231
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 235
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mDescription:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mSubDescription:Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mData:Ljava/lang/Object;

    .line 292
    if-nez p1, :cond_1e

    if-nez p2, :cond_1e

    if-nez p3, :cond_1e

    if-nez p4, :cond_1e

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the Drawable, String, subDescription and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mView:Landroid/view/View;

    .line 231
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 235
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mDescription:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mSubDescription:Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mData:Ljava/lang/Object;

    .line 259
    if-nez p1, :cond_1a

    if-nez p2, :cond_1a

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the View and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 263
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSubDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mSubDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 323
    iput-object p2, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mDescription:Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mData:Ljava/lang/Object;

    .line 325
    return-void
.end method

.method public set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "subDescription"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 337
    iput-object p2, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mDescription:Ljava/lang/String;

    .line 338
    iput-object p3, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mSubDescription:Ljava/lang/String;

    .line 339
    iput-object p4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mData:Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public set(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mView:Landroid/view/View;

    .line 311
    iput-object p2, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->mData:Ljava/lang/Object;

    .line 312
    return-void
.end method
