.class public final enum Landroid/content/pm/PersonaAttribute;
.super Ljava/lang/Enum;
.source "PersonaAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/pm/PersonaAttribute;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/pm/PersonaAttribute;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISABLE_KNOX_KEYGUARD:Landroid/content/pm/PersonaAttribute;

.field public static final enum PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

.field public static final enum PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

.field public static final enum RESETTING:Landroid/content/pm/PersonaAttribute;

.field public static final enum UPGRADING:Landroid/content/pm/PersonaAttribute;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string v1, "UPGRADING"

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->UPGRADING:Landroid/content/pm/PersonaAttribute;

    .line 11
    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string v1, "PASSWORD_CHANGE_REQUEST"

    invoke-direct {v0, v1, v3}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    .line 12
    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string v1, "RESETTING"

    invoke-direct {v0, v1, v4}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->RESETTING:Landroid/content/pm/PersonaAttribute;

    .line 13
    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string v1, "DISABLE_KNOX_KEYGUARD"

    invoke-direct {v0, v1, v5}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->DISABLE_KNOX_KEYGUARD:Landroid/content/pm/PersonaAttribute;

    .line 14
    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string v1, "PASSWORD_CHANGE_REQUEST_ENFORCED"

    invoke-direct {v0, v1, v6}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/content/pm/PersonaAttribute;

    sget-object v1, Landroid/content/pm/PersonaAttribute;->UPGRADING:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/pm/PersonaAttribute;->RESETTING:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v4

    sget-object v1, Landroid/content/pm/PersonaAttribute;->DISABLE_KNOX_KEYGUARD:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v5

    sget-object v1, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v6

    sput-object v0, Landroid/content/pm/PersonaAttribute;->$VALUES:[Landroid/content/pm/PersonaAttribute;

    .line 26
    new-instance v0, Landroid/content/pm/PersonaAttribute$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaAttribute$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaAttribute;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Landroid/content/pm/PersonaAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaAttribute;

    return-object v0
.end method

.method public static values()[Landroid/content/pm/PersonaAttribute;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Landroid/content/pm/PersonaAttribute;->$VALUES:[Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v0}, [Landroid/content/pm/PersonaAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/PersonaAttribute;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/pm/PersonaAttribute;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    return-void
.end method
