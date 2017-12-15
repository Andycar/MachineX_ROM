.class Landroid/widget/TimePickerClockDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/TimePickerClockDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 888
    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/widget/TimePickerClockDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/TimePickerClockDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 867
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    .line 870
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TimePickerClockDelegate$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/TimePickerClockDelegate$1;

    .prologue
    .line 856
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .registers 4
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 861
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 862
    iput p2, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    .line 863
    iput p3, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    .line 864
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerClockDelegate$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/widget/TimePickerClockDelegate$1;

    .prologue
    .line 856
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .registers 2

    .prologue
    .line 873
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 877
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 882
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 883
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    return-void
.end method
