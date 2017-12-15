.class Landroid/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
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
            "Landroid/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1809
    new-instance v0, Landroid/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Landroid/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1793
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    .line 1795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    .line 1796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    .line 1797
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DatePicker$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/DatePicker$1;

    .prologue
    .line 1771
    invoke-direct {p0, p1}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 1783
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1784
    iput p2, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    .line 1785
    iput p3, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    .line 1786
    iput p4, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    .line 1787
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V
    .registers 6
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/widget/DatePicker$1;

    .prologue
    .line 1771
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/DatePicker$SavedState;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$SavedState;

    .prologue
    .line 1771
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/DatePicker$SavedState;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$SavedState;

    .prologue
    .line 1771
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/DatePicker$SavedState;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$SavedState;

    .prologue
    .line 1771
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1801
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1802
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1805
    return-void
.end method
