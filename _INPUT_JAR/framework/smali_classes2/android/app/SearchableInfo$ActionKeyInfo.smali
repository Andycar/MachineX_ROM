.class public Landroid/app/SearchableInfo$ActionKeyInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionKeyInfo"
.end annotation


# instance fields
.field private final mKeyCode:I

.field private final mQueryActionMsg:Ljava/lang/String;

.field private final mSuggestActionMsg:Ljava/lang/String;

.field private final mSuggestActionMsgColumn:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    sget-object v1, Lcom/android/internal/R$styleable;->SearchableActionKey:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 440
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    .line 442
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    .line 444
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    .line 446
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    .line 448
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 451
    iget v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    if-nez v1, :cond_34

    .line 452
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No keycode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_34
    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    if-nez v1, :cond_48

    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    if-nez v1, :cond_48

    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    if-nez v1, :cond_48

    .line 456
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No message information."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    .line 472
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/SearchableInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/SearchableInfo$1;

    .prologue
    .line 421
    invoke-direct {p0, p1}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyCode()I
    .registers 2

    .prologue
    .line 479
    iget v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    return v0
.end method

.method public getQueryActionMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestActionMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestActionMsgColumn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 511
    iget v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    return-void
.end method