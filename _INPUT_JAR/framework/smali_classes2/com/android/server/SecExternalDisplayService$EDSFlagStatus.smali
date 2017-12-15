.class public final enum Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
.super Ljava/lang/Enum;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDSFlagStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_EVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_HOMETHEATRE:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_HDMI"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 160
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_WFD"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 161
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_SMARTDOCK"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 162
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_RVF"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 163
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_SIDESYNC"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 164
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_SCREENRECORDING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 165
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_HOMETHEATRE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HOMETHEATRE:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 166
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_EVF"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_EVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 167
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_CAMERA_START"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 168
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_STATUS_CAMERA_ROTATION_SUPPORT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HOMETHEATRE:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_EVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    iput p3, p0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->value:I

    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    .registers 7
    .param p0, "value"    # I

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, "retStatus":Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    invoke-static {}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->values()[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_12

    aget-object v4, v0, v1

    .line 178
    .local v4, "tempVal":Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_13

    .line 179
    move-object v3, v4

    .line 183
    .end local v4    # "tempVal":Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    :cond_12
    return-object v3

    .line 177
    .restart local v4    # "tempVal":Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, [Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->value:I

    return v0
.end method
