.class final Landroid/widget/TimePickerSpinnerDelegate$SavedState$1;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerSpinnerDelegate$SavedState;
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
        "Landroid/widget/TimePickerSpinnerDelegate$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 586
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/TimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 590
    new-array v0, p1, [Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate$SavedState$1;->newArray(I)[Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    move-result-object v0

    return-object v0
.end method
