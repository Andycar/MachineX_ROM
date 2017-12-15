.class public final enum Landroid/content/pm/PersonaNewEvent;
.super Ljava/lang/Enum;
.source "PersonaNewEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/pm/PersonaNewEvent;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/pm/PersonaNewEvent;

.field public static final enum ADMIN_LOCK:Landroid/content/pm/PersonaNewEvent;

.field public static final enum ADMIN_UNLOCK:Landroid/content/pm/PersonaNewEvent;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaNewEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LICENSE_LOCK:Landroid/content/pm/PersonaNewEvent;

.field public static final enum LICENSE_UNLOCK:Landroid/content/pm/PersonaNewEvent;

.field public static final enum REMOVE:Landroid/content/pm/PersonaNewEvent;

.field public static final enum TIMA_COMPROMISED:Landroid/content/pm/PersonaNewEvent;

.field public static final enum USER_LOCK:Landroid/content/pm/PersonaNewEvent;

.field public static final enum USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Landroid/content/pm/PersonaNewEvent;

    const-string v1, "USER_LOCK"

    invoke-direct {v0, v1, v3}, Landroid/content/pm/PersonaNewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    .line 10
    new-instance v0, Landroid/content/pm/PersonaNewEvent;

    const-string v1, "USER_UNLOCK"

    invoke-direct {v0, v1, v4}, Landroid/content/pm/PersonaNewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    .line 11
    new-instance v0, Landroid/content/pm/PersonaNewEvent;

    const-string v1, "ADMIN_LOCK"

    invoke-direct {v0, v1, v5}, Landroid/content/pm/PersonaNewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->ADMIN_LOCK:Landroid/content/pm/PersonaNewEvent;

    .line 12
    new-instance v0, Landroid/content/pm/PersonaNewEvent;

    const-string v1, "ADMIN_UNLOCK"

    invoke-direct {v0, v1, v6}, Landroid/content/pm/PersonaNewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->ADMIN_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    .line 13
    new-instance v0, Landroid/content/pm/PersonaNewEvent;

    const-string v1, "LICENSE_LOCK"

    invoke-direct {v0, v1, v7}, Landroid/content/pm/PersonaNewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->LICENSE_LOCK:Landroid/content/pm/PersonaNewEvent;

    .line 14
    new-instance v0, Landroid/content/pm/PersonaNewEvent;

    const-string v1, "LICENSE_UNLOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaNewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->LICENSE_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    .line 15
    new-instance v0, Landroid/content/pm/PersonaNewEvent;

    const-string v1, "REMOVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaNewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->REMOVE:Landroid/content/pm/PersonaNewEvent;

    .line 16
    new-instance v0, Landroid/content/pm/PersonaNewEvent;

    const-string v1, "TIMA_COMPROMISED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaNewEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->TIMA_COMPROMISED:Landroid/content/pm/PersonaNewEvent;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/content/pm/PersonaNewEvent;

    sget-object v1, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/pm/PersonaNewEvent;->USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    aput-object v1, v0, v4

    sget-object v1, Landroid/content/pm/PersonaNewEvent;->ADMIN_LOCK:Landroid/content/pm/PersonaNewEvent;

    aput-object v1, v0, v5

    sget-object v1, Landroid/content/pm/PersonaNewEvent;->ADMIN_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    aput-object v1, v0, v6

    sget-object v1, Landroid/content/pm/PersonaNewEvent;->LICENSE_LOCK:Landroid/content/pm/PersonaNewEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/content/pm/PersonaNewEvent;->LICENSE_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/content/pm/PersonaNewEvent;->REMOVE:Landroid/content/pm/PersonaNewEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/content/pm/PersonaNewEvent;->TIMA_COMPROMISED:Landroid/content/pm/PersonaNewEvent;

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->$VALUES:[Landroid/content/pm/PersonaNewEvent;

    .line 30
    new-instance v0, Landroid/content/pm/PersonaNewEvent$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaNewEvent$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaNewEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaNewEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Landroid/content/pm/PersonaNewEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaNewEvent;

    return-object v0
.end method

.method public static values()[Landroid/content/pm/PersonaNewEvent;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Landroid/content/pm/PersonaNewEvent;->$VALUES:[Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v0}, [Landroid/content/pm/PersonaNewEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/PersonaNewEvent;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/pm/PersonaNewEvent;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    return-void
.end method
