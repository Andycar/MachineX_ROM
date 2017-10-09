.class final enum Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;
.super Ljava/lang/Enum;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PenDetachmentOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

.field public static final enum ACTION_MEMO:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

.field public static final enum AIR_COMMAND:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

.field public static final enum NONE:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;


# instance fields
.field private option:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    new-instance v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->NONE:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    new-instance v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    const-string v1, "ACTION_MEMO"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->ACTION_MEMO:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    new-instance v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    const-string v1, "AIR_COMMAND"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->AIR_COMMAND:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    sget-object v1, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->NONE:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->ACTION_MEMO:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->AIR_COMMAND:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->$VALUES:[Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 213
    iput p3, p0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->option:I

    .line 214
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    const-class v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->$VALUES:[Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    invoke-virtual {v0}, [Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    return-object v0
.end method
