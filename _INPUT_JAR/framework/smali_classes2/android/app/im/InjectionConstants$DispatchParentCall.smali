.class public final enum Landroid/app/im/InjectionConstants$DispatchParentCall;
.super Ljava/lang/Enum;
.source "InjectionConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/im/InjectionConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DispatchParentCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/im/InjectionConstants$DispatchParentCall;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONCONFIGURATIONCHANGED:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONCREATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONDESTROY:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONPAUSE:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONRESTART:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONRESTOREINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONRESUME:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONSAVEINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONSEARCHREQUESTED:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONSTART:Landroid/app/im/InjectionConstants$DispatchParentCall;

.field public static final enum ONSTOP:Landroid/app/im/InjectionConstants$DispatchParentCall;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONCREATE"

    invoke-direct {v0, v1, v3}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONCREATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 52
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONSTART"

    invoke-direct {v0, v1, v4}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSTART:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 53
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONPAUSE"

    invoke-direct {v0, v1, v5}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONPAUSE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 54
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONRESUME"

    invoke-direct {v0, v1, v6}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESUME:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 55
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONSTOP"

    invoke-direct {v0, v1, v7}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSTOP:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 56
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONDESTROY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONDESTROY:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 57
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONRESTART"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESTART:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 58
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONSAVEINSTANCESTATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSAVEINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 59
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONRESTOREINSTANCESTATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESTOREINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 60
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONCONFIGURATIONCHANGED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONCONFIGURATIONCHANGED:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 61
    new-instance v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    const-string v1, "ONSEARCHREQUESTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/app/im/InjectionConstants$DispatchParentCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSEARCHREQUESTED:Landroid/app/im/InjectionConstants$DispatchParentCall;

    .line 50
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/app/im/InjectionConstants$DispatchParentCall;

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONCREATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSTART:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONPAUSE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESUME:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSTOP:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONDESTROY:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESTART:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSAVEINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONRESTOREINSTANCESTATE:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONCONFIGURATIONCHANGED:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSEARCHREQUESTED:Landroid/app/im/InjectionConstants$DispatchParentCall;

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->$VALUES:[Landroid/app/im/InjectionConstants$DispatchParentCall;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/im/InjectionConstants$DispatchParentCall;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/im/InjectionConstants$DispatchParentCall;

    return-object v0
.end method

.method public static values()[Landroid/app/im/InjectionConstants$DispatchParentCall;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Landroid/app/im/InjectionConstants$DispatchParentCall;->$VALUES:[Landroid/app/im/InjectionConstants$DispatchParentCall;

    invoke-virtual {v0}, [Landroid/app/im/InjectionConstants$DispatchParentCall;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/im/InjectionConstants$DispatchParentCall;

    return-object v0
.end method
