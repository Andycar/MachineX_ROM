.class final Landroid/widget/AbsSpinner$SavedState$1;
.super Ljava/lang/Object;
.source "AbsSpinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSpinner$SavedState;
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
        "Landroid/widget/AbsSpinner$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/AbsSpinner$SavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 404
    new-instance v0, Landroid/widget/AbsSpinner$SavedState;

    invoke-direct {v0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/AbsSpinner$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/AbsSpinner$SavedState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 408
    new-array v0, p1, [Landroid/widget/AbsSpinner$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner$SavedState$1;->newArray(I)[Landroid/widget/AbsSpinner$SavedState;

    move-result-object v0

    return-object v0
.end method
