.class final Landroid/view/accessibility/AccessibilityNodeInfo$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
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
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 3830
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3831
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    # invokes: Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->access$200(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V

    .line 3832
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 3827
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 3837
    new-array v0, p1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 3827
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$1;->newArray(I)[Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
