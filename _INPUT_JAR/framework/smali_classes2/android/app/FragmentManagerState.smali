.class final Landroid/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Landroid/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Landroid/app/BackStackState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 385
    new-instance v0, Landroid/app/FragmentManagerState$1;

    invoke-direct {v0}, Landroid/app/FragmentManagerState$1;-><init>()V

    sput-object v0, Landroid/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    sget-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/FragmentState;

    iput-object v0, p0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 372
    sget-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/BackStackState;

    iput-object v0, p0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    .line 373
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 380
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 381
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mAdded:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 382
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 383
    return-void
.end method
