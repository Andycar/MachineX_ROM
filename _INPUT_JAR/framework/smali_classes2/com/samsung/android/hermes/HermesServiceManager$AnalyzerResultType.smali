.class public final enum Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
.super Ljava/lang/Enum;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyzerResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Color:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Contact_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Date_Time:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Document:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Email:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Event:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Event_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Hotkeyword:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Name:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum NonLikableTypeDivider:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Original:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum PeekEvent:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Poi:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum ScreenShot:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Tag:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Telnum:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Time:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Unknown:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Uri:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

.field public static final enum Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Unknown:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Event"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Event_id"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Name"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Name:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Contact_id"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Contact_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Telnum"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Telnum:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Place"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Poi"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Poi:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Email"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Email:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Url"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Hotkeyword"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Hotkeyword:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    .line 74
    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "NonLikableTypeDivider"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->NonLikableTypeDivider:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Date"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Time"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Time:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Tag"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Tag:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Color"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Color:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Uri"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Uri:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Document"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Document:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "ScreenShot"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->ScreenShot:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "PeekEvent"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->PeekEvent:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Original"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Original:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    .line 75
    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    const-string v1, "Date_Time"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date_Time:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    .line 71
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Unknown:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Name:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Contact_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Telnum:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Poi:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Email:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Hotkeyword:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->NonLikableTypeDivider:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Time:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Tag:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Color:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Uri:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Document:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->ScreenShot:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->PeekEvent:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Original:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date_Time:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->$VALUES:[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->$VALUES:[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v0}, [Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    return-object v0
.end method
