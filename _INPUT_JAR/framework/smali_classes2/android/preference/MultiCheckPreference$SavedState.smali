.class Landroid/preference/MultiCheckPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "MultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MultiCheckPreference;
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
            "Landroid/preference/MultiCheckPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field values:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 324
    new-instance v0, Landroid/preference/MultiCheckPreference$SavedState$1;

    invoke-direct {v0}, Landroid/preference/MultiCheckPreference$SavedState$1;-><init>()V

    sput-object v0, Landroid/preference/MultiCheckPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 322
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 316
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    iget-object v0, p0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 318
    return-void
.end method
