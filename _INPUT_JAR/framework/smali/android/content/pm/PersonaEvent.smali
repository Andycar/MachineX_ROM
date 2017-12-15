.class public Landroid/content/pm/PersonaEvent;
.super Ljava/lang/Object;
.source "PersonaEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CREATE_COMPLETE:I = 0x1

.field public static final EVENT_INVALID:I = -0x1

.field public static final EVENT_KLMS_LOCK:I = 0xc

.field public static final EVENT_KLMS_UNLOCK:I = 0xd

.field public static final EVENT_LOCK:I = 0x0

.field public static final EVENT_SETUP_COMPLETE:I = 0x2

.field public static final EVENT_UNLOCK:I = 0x3

.field public static final KNOX_EVENT_ADMIN_LOCK:I = 0xb

.field public static final KNOX_EVENT_ADMIN_UNLOCK:I = 0x6

.field public static final KNOX_EVENT_DELETE_PERSONA:I = 0x8

.field public static final KNOX_EVENT_DISABLE_KEYGUARD:I = 0xe

.field public static final KNOX_EVENT_ENABLE_KEYGUARD:I = 0xf

.field public static final KNOX_EVENT_FORCE_PASSWORD_RESET:I = 0x4

.field public static final KNOX_EVENT_PASSWORD_CHANGE_SUCCESS:I = 0x5

.field public static final KNOX_EVENT_TIMA_COMPROMISE:I = 0xa

.field public static final KNOX_EVENT_UPGRADE_COMPLETE:I = 0x7

.field public static final KNOX_EVENT_UPGRADE_PERSONA:I = 0x9

.field private static final readableStrings:[Ljava/lang/String;


# instance fields
.field private event:I

.field private extras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KNOX_EVENT_LOCK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KNOX_EVENT_CREATE_COMPLETE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KNOX_EVENT_SETUP_COMPLETE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KNOX_EVENT_UNLOCK"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KNOX_EVENT_FORCE_PASSWORD_RESET"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "KNOX_EVENT_PASSWORD_CHANGE_SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KNOX_EVENT_ADMIN_UNLOCK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KNOX_EVENT_UPGRADE_COMPLETE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KNOX_EVENT_DELETE_PERSONA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KNOX_EVENT_UPGRADE_PERSONA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "KNOX_EVENT_TIMA_COMPROMISE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "KNOX_EVENT_ADMIN_LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "KNOX_EVENT_KLMS_LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "KNOX_EVENT_KLMS_UNLOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "KNOX_EVENT_DISABLE_KEYGUARD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "KNOX_EVENT_ENABLE_KEYGUARD"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/pm/PersonaEvent;->readableStrings:[Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/content/pm/PersonaEvent$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaEvent$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "event"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Landroid/content/pm/PersonaEvent;->event:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaEvent;->event:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    .line 52
    return-void
.end method

.method public static toReadableString(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I

    .prologue
    .line 41
    if-ltz p0, :cond_7

    sget-object v0, Landroid/content/pm/PersonaEvent;->readableStrings:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_a

    :cond_7
    const-string v0, "KNOX_EVENT_INVALID"

    .line 42
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Landroid/content/pm/PersonaEvent;->readableStrings:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getEvent()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Landroid/content/pm/PersonaEvent;->event:I

    return v0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 88
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .end local p2    # "defaultValue":I
    :goto_4
    return p2

    .restart local p2    # "defaultValue":I
    :cond_5
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_4
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/pm/PersonaEvent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 74
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    .line 77
    :cond_b
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PersonaEvent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    .line 68
    :cond_b
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object p0
.end method

.method public setEvent(I)Landroid/content/pm/PersonaEvent;
    .registers 2
    .param p1, "event"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/content/pm/PersonaEvent;->event:I

    .line 60
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 99
    iget v0, p0, Landroid/content/pm/PersonaEvent;->event:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/content/pm/PersonaEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method
