.class final Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayDeviceInfo"
.end annotation


# instance fields
.field devType:I

.field deviceId:Ljava/lang/CharSequence;

.field deviceName:Ljava/lang/CharSequence;

.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field netType:I

.field number:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .registers 5
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 364
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    .line 362
    iput v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    .line 365
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 366
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    .line 367
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    .line 368
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    .line 369
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 370
    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V
    .registers 10
    .param p2, "pDeviceName"    # Ljava/lang/CharSequence;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pDeviceId"    # Ljava/lang/CharSequence;
    .param p5, "pNumber"    # Ljava/lang/CharSequence;
    .param p6, "pIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "network"    # I
    .param p8, "device"    # I

    .prologue
    const/4 v0, 0x0

    .line 372
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    .line 362
    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    .line 373
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 374
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    .line 375
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    .line 376
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    .line 377
    iput-object p6, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 378
    iput p7, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    .line 379
    iput p8, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    .line 380
    return-void
.end method
