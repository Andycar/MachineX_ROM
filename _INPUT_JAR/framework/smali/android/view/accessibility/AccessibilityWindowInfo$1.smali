.class final Landroid/view/accessibility/AccessibilityWindowInfo$1;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityWindowInfo;
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
        "Landroid/view/accessibility/AccessibilityWindowInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 585
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 586
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    # invokes: Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->access$000(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V

    .line 587
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 592
    new-array v0, p1, [Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo$1;->newArray(I)[Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method
