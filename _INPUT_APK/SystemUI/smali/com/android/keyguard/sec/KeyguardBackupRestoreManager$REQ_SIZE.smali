.class public final enum Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
.super Ljava/lang/Enum;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REQ_SIZE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

.field public static final enum MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

.field public static final enum SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    const-string v1, "MINIMUM_SIZE"

    const/high16 v2, 0xa00000

    invoke-direct {v0, v1, v4, v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->$VALUES:[Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->value:I

    .line 89
    iput p3, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->value:I

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->$VALUES:[Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    invoke-virtual {v0}, [Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->value:I

    return v0
.end method
